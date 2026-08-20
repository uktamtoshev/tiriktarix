# -*- coding: utf-8 -*-
"""
3D-рельеф «Zamon xaritalari» — та же карта, что в SVG, но объёмная.

  blender --background --python tools/blender/map.py -- --out <dir>
  (частично: -- --only base   или  -- --only territories)

ГЛАВНОЕ ПРАВИЛО — КАДР. Камера ортографическая и строго сверху, кадр в точности
равен SVG-viewBox "0 0 1000 700":
    мир X = svg_x / 100,   мир Y = −svg_y / 100
При ортопроекции сверху высота НЕ смещает объект по XY, поэтому каждый пиксель
рендера лежит ровно на своей SVG-координате. Благодаря этому фронт вставляет
картинки прямо внутрь существующего <svg> как <image>, а клики, подписи городов
и выделение слоёв остаются SVG — ничего не пересчитывается.

Объём даёт рельеф: горы Тянь-Шаня и Памира — настоящие хребты, Арал — впадина,
пустыни и территории — приподнятые плиты со стенками, реки и маршруты — трубки.
Тени и cavity в Workbench лепят форму (EEVEE в headless на Intel-Mac
деградирует со второго кадра до минут — см. style.md).

Геометрия слоёв берётся из tools/blender/map_data.json — это выгрузка таблицы
map_features, а не выдуманные контуры. Фон, пустыни, реки, горы и надписи
повторяют frontend/src/components/art/CentralAsiaBase.tsx.
"""

import argparse
import json
import math
import os
import re
import sys

import bmesh
import bpy
from mathutils import Vector, noise

sys.path.append(os.path.dirname(os.path.abspath(__file__)))
from character import assign, hex_rgba, material  # noqa: E402

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
DATA = os.path.join(HERE, "map_data.json")
OUT_DEFAULT = os.path.join(ROOT, "frontend", "public", "map3d")

SVG_W, SVG_H = 1000, 700
S = 0.01                      # 1 SVG-единица = 0.01 мира
RES_X, RES_Y = 1500, 1050     # 1.5× к viewBox — хватает на retina

# ============================== ПАЛИТРА ==============================
# Цвета и прозрачности — из CentralAsiaBase.tsx и xaritalar/page.tsx.

SURFACE = "#0d121b"
GRATICULE = ("#c8a247", 0.10)
DESERT = ("#161c28", 0.9)
DESERT_TEXT = ("#c8a247", 0.28)
ARAL_FILL = ("#24405e", 0.55)
ARAL_EDGE = ("#4a7ba8", 0.5)
WATER_TEXT = ("#9fc0e0", 0.7)
RIVER = ("#4a7ba8", 0.7)
RIDGE = ("#5b6478", 0.75)
RIDGE_TEXT = ("#8f98ab", 0.65)
ROUTE_GOLD = "#f3d98b"
CITY_GOLD = "#f3d98b"
CITY_RING = "#0a0d13"
TERRITORY_COLORS = ["#c8a247", "#2e8a87", "#5a7fbe"]

# ============================== ВЫСОТЫ ==============================

Z_SURFACE = 0.0
Z_GRID = 0.016
Z_DESERT = 0.020
Z_RIVER = 0.032
# Подписи поднимаются выше гор: при ортопроекции сверху высота не смещает
# объект по XY, поэтому надпись остаётся ровно на своей SVG-координате,
# но перестаёт тонуть в хребте (TYANSHAN стоит вплотную к Тянь-Шаню).
Z_LABEL = 0.60
Z_TERRITORY = 0.075        # верх плиты территории
Z_ROUTE = 0.115
Z_CITY = 0.150


def mix(fg, bg, a):
    """Цвет `fg` с прозрачностью `a` поверх `bg` — как fill-opacity в SVG."""
    f = [int(fg.lstrip("#")[i:i + 2], 16) for i in (0, 2, 4)]
    b = [int(bg.lstrip("#")[i:i + 2], 16) for i in (0, 2, 4)]
    return "#" + "".join(f"{round(f[i] * a + b[i] * (1 - a)):02x}" for i in range(3))


def flat(name, color, alpha=1.0, over=SURFACE, glow=0.0):
    """Плоский материал; alpha эмулируется подмешиванием фона (Workbench
    не умеет прозрачность, а SVG-слои полупрозрачны)."""
    return material(f"map_{name}", mix(color, over, alpha), glow=glow)


# ============================ КООРДИНАТЫ ============================

def w(x, y, z=0.0):
    """SVG → мир. Y инвертируется: в SVG ось Y смотрит вниз."""
    return (x * S, -y * S, z)


def parse_points(d):
    """Полилиния из SVG-path. В данных только M/L/Z — парсим числа парами."""
    nums = [float(n) for n in re.findall(r"-?\d+(?:\.\d+)?", d)]
    pts = list(zip(nums[0::2], nums[1::2]))
    return pts, d.strip().upper().endswith("Z")


# ============================= ПРИМИТИВЫ =============================

def polygon(name, pts, z_top, depth, mat):
    """Плита по контуру: верхняя грань на z_top, стенки вниз на depth."""
    bm = bmesh.new()
    verts = [bm.verts.new(w(x, y, z_top)) for x, y in pts]
    n = len(verts)
    edges = [bm.edges.new((verts[i], verts[(i + 1) % n])) for i in range(n)]
    bmesh.ops.triangle_fill(bm, use_beauty=True, use_dissolve=False, edges=edges)
    bmesh.ops.recalc_face_normals(bm, faces=bm.faces[:])
    if any(f.normal.z < 0 for f in bm.faces):
        bmesh.ops.reverse_faces(bm, faces=bm.faces[:])
    if depth:
        res = bmesh.ops.extrude_face_region(bm, geom=bm.faces[:])
        moved = [e for e in res["geom"] if isinstance(e, bmesh.types.BMVert)]
        bmesh.ops.translate(bm, verts=moved, vec=(0, 0, -depth))
    mesh = bpy.data.meshes.new(name)
    bm.to_mesh(mesh)
    bm.free()
    obj = bpy.data.objects.new(name, mesh)
    bpy.context.collection.objects.link(obj)
    assign(obj, mat)
    return obj


def tube(name, pts, radius, z, mat, closed=False, smooth=True):
    """Трубка вдоль полилинии — реки, маршруты, обводка контуров."""
    cu = bpy.data.curves.new(name, "CURVE")
    cu.dimensions = "3D"
    cu.bevel_depth = radius
    cu.bevel_resolution = 3
    cu.fill_mode = "FULL"
    sp = cu.splines.new("POLY")
    sp.points.add(len(pts) - 1)
    for i, (x, y) in enumerate(pts):
        sp.points[i].co = (*w(x, y, z), 1.0)
    sp.use_cyclic_u = closed
    obj = bpy.data.objects.new(name, cu)
    bpy.context.collection.objects.link(obj)
    obj.data.materials.append(mat)
    if smooth:
        cu.resolution_u = 6
    return obj


def cylinder(name, cx, cy, r, z, height, mat, verts=28):
    bpy.ops.mesh.primitive_cylinder_add(vertices=verts, radius=r * S,
                                        depth=height,
                                        location=w(cx, cy, z - height / 2))
    obj = bpy.context.object
    obj.name = name
    assign(obj, mat)
    return obj


def label(name, text, x, y, size, color, alpha=1.0, spacing=0.0,
          rot_deg=0.0, align="CENTER", over=SURFACE, z=Z_LABEL):
    """Плоская надпись на карте — географические подписи из CentralAsiaBase."""
    cu = bpy.data.curves.new(name, "FONT")
    cu.body = text
    cu.size = size * S
    cu.align_x = align
    cu.align_y = "CENTER"
    if spacing:
        cu.space_character = 1.0 + spacing / size
    obj = bpy.data.objects.new(name, cu)
    bpy.context.collection.objects.link(obj)
    obj.location = w(x, y, z)
    obj.rotation_euler = (0, 0, math.radians(-rot_deg))
    assign(obj, flat(f"txt_{name}", color, alpha, over))
    return obj


# ============================== РЕЛЬЕФ ==============================
# Хребты заданы линиями по тем же местам, где в SVG нарисованы «шевроны»
# гор: Тянь-Шань на северо-востоке, Памир на юго-востоке.

# Вершины стоят ровно там, где в CentralAsiaBase нарисованы «шевроны» гор:
# каждый штрих `M x y l16 -16 l16 16` даёт пик в (x+16, y-16).
PEAKS = [
    # Тянь-Шань, северо-восток
    (776, 234, 1.00), (816, 246, 0.86), (856, 224, 1.06), (896, 242, 0.92),
    (806, 284, 0.82), (846, 272, 0.94), (886, 290, 0.78),
    # Памир, юго-восток
    (828, 454, 1.04), (868, 442, 1.12), (908, 460, 0.90),
    (856, 506, 0.86), (896, 494, 0.96),
]
PEAK_R = 21          # радиус подошвы в SVG-единицах (шеврон шириной 32)
PEAK_H = 0.30        # высота вершины в мире

# Арал — эллипс из CentralAsiaBase: cx/cy/rx/ry + поворот
ARAL = dict(cx=272, cy=120, rx=58, ry=92, rot=-22)


def _dist_to_polyline(px, py, pts):
    best = 1e9
    for (x1, y1), (x2, y2) in zip(pts, pts[1:]):
        dx, dy = x2 - x1, y2 - y1
        t = max(0.0, min(1.0, ((px - x1) * dx + (py - y1) * dy) /
                         (dx * dx + dy * dy or 1e-9)))
        best = min(best, math.hypot(px - x1 - t * dx, py - y1 - t * dy))
    return best


def aral_local(x, y):
    """Координаты точки в системе повёрнутого эллипса Арала."""
    a = math.radians(-ARAL["rot"])
    dx, dy = x - ARAL["cx"], y - ARAL["cy"]
    rx = dx * math.cos(a) - dy * math.sin(a)
    ry = dx * math.sin(a) + dy * math.cos(a)
    return rx / ARAL["rx"], ry / ARAL["ry"]


def terrain_height(x, y):
    """Высота суши: почти плоская равнина + чаша Арала.

    Горы — отдельные меши (build_ridge), а не бугры рельефа: так пустыни и
    реки ложатся на предсказуемую высоту и не «рябят» от шума.
    """
    n = noise.fractal(Vector((x * 0.02, y * 0.02, 0.0)), 0.6, 2.0, 3)
    h = 0.008 + 0.0035 * n
    u, v = aral_local(x, y)
    r = math.hypot(u, v)
    if r < 1.15:                                     # чаша моря
        h -= 0.030 * math.cos(min(r / 1.15, 1.0) * math.pi / 2) ** 2
    return h


def resample(pts, step=9.0):
    """Уплотняет полилинию — чтобы у хребта было из чего лепить вершины."""
    out = [pts[0]]
    for (x1, y1), (x2, y2) in zip(pts, pts[1:]):
        d = math.hypot(x2 - x1, y2 - y1)
        for k in range(1, max(1, int(d / step)) + 1):
            t = k / max(1, int(d / step))
            out.append((x1 + (x2 - x1) * t, y1 + (y2 - y1) * t))
    return out


def build_peak(name, x, y, scale, mat):
    """Отдельная вершина — гранёная пирамида на месте «шеврона» из SVG.

    Дискретные пики читаются горами куда лучше сплошного гребня: сверху
    сплошная «палатка» выглядит лентой, а группа пирамид даёт узнаваемый
    силуэт горной гряды и внятные тени.
    """
    r = PEAK_R * scale * S
    h = PEAK_H * scale
    base = terrain_height(x, y)
    # чуть повёрнута — грани соседних вершин не выстраиваются в решётку
    bpy.ops.mesh.primitive_cone_add(
        vertices=5, radius1=r, radius2=0.0, depth=h,
        location=w(x, y, base + h / 2),
        rotation=(0, 0, (x * 0.7 + y * 1.3) % math.tau))
    obj = bpy.context.object
    obj.name = name
    assign(obj, mat)
    return obj


def build_terrain():
    """Плита суши с рельефом — основа кадра."""
    nx, ny = 140, 98
    bm = bmesh.new()
    grid = []
    for j in range(ny + 1):
        row = []
        for i in range(nx + 1):
            sx = SVG_W * i / nx
            sy = SVG_H * j / ny
            row.append(bm.verts.new(w(sx, sy, terrain_height(sx, sy))))
        grid.append(row)
    for j in range(ny):
        for i in range(nx):
            bm.faces.new((grid[j][i], grid[j][i + 1],
                          grid[j + 1][i + 1], grid[j + 1][i]))
    bmesh.ops.recalc_face_normals(bm, faces=bm.faces[:])
    mesh = bpy.data.meshes.new("terrain")
    bm.to_mesh(mesh)
    bm.free()
    obj = bpy.data.objects.new("terrain", mesh)
    bpy.context.collection.objects.link(obj)
    assign(obj, flat("surface", SURFACE))
    for p in obj.data.polygons:
        p.use_smooth = True
    return obj


def build_aral():
    """Вода Арала — линза внутри впадины, с обводкой берега."""
    pts = []
    for i in range(72):
        t = 2 * math.pi * i / 72
        a = math.radians(ARAL["rot"])
        ex, ey = ARAL["rx"] * math.cos(t), ARAL["ry"] * math.sin(t)
        pts.append((ARAL["cx"] + ex * math.cos(a) - ey * math.sin(a),
                    ARAL["cy"] + ex * math.sin(a) + ey * math.cos(a)))
    # Вода заполняет эллипс целиком (как fill у ellipse в SVG), а чаша под ней
    # даёт тень по кромке — берег читается объёмным.
    polygon("aral_water", pts, 0.004, 0.03, flat("aral", *ARAL_FILL))
    tube("aral_shore", pts, 0.009, 0.008,
         flat("aral_edge", *ARAL_EDGE), closed=True)


def build_base():
    """Всё, что не зависит от эпохи: рельеф, вода, пустыни, горы, подписи."""
    build_terrain()

    # сетка меридианов и параллелей
    m_grid = flat("graticule", *GRATICULE)
    for x in (0, 250, 500, 750):
        tube(f"grat_x{x}", [(x, 0), (x, SVG_H)], 0.005, Z_GRID, m_grid)
    for y in (116.7, 408.3):
        tube(f"grat_y{int(y)}", [(0, y), (SVG_W, y)], 0.005, Z_GRID, m_grid)

    # пустыни
    m_desert = flat("desert", *DESERT)
    for name, d in (
        ("qizilqum", "M300 300 L470 292 L580 330 L624 404 L500 442 L372 412 L306 356 Z"),
        ("qoraqum", "M236 424 L360 436 L438 486 L418 566 L286 552 L214 486 Z"),
    ):
        pts, _ = parse_points(d)
        polygon(name, pts, Z_DESERT, 0.035, m_desert)

    build_aral()

    # реки
    m_river = flat("river", *RIVER)
    rivers = [
        ("amudaryo", "M880 596 L800 578 L700 580 L614 571 L510 536 L430 459 "
                     "L330 380 L250 300 L228 258 L206 196", 1.7),
        ("sirdaryo", "M930 396 L825 379 L731 392 L690 340 L670 270 L600 200 "
                     "L450 120 L336 78", 1.5),
        ("zarafshon", "M712 448 L640 434 L598 429 L520 424 L471 422 L412 432", 1.0),
    ]
    for name, d, r in rivers:
        pts, _ = parse_points(d)
        tube(name, pts, r * S, Z_RIVER, m_river)

    # горы — вершинами на местах «шевронов» из SVG
    m_ridge = flat("ridge", *RIDGE, over="#1a2130")
    for i, (x, y, k) in enumerate(PEAKS):
        build_peak(f"peak_{i}", x, y, k, m_ridge)

    # географические подписи — те же позиции и кегли, что в SVG
    label("t_qizilqum", "QIZILQUM", 404, 376, 13, *DESERT_TEXT, spacing=4)
    label("t_qoraqum", "QORAQUM", 316, 500, 13, *DESERT_TEXT, spacing=4)
    label("t_orol", "OROL", 272, 124, 12, "#9fc0e0", 0.75, spacing=3,
          over=mix(ARAL_FILL[0], SURFACE, ARAL_FILL[1]), z=0.02)
    label("t_amudaryo", "AMUDARYO", 470, 486, 11, *WATER_TEXT, spacing=2,
          rot_deg=-32, align="LEFT")
    label("t_sirdaryo", "SIRDARYO", 560, 150, 11, *WATER_TEXT, spacing=2,
          rot_deg=-24, align="LEFT")
    label("t_tyanshan", "TYANSHAN", 880, 222, 11, *RIDGE_TEXT, spacing=3)
    label("t_pomir", "POMIR", 884, 560, 11, *RIDGE_TEXT, spacing=3)


# ========================= СЛОИ ЭПОХ =========================

def build_territory(f, color):
    """Приподнятое плато с яркой кромкой — 3D-версия полупрозрачной заливки."""
    pts, _ = parse_points(f["geometry"])
    polygon(f"terr_{f['id']}", pts, Z_TERRITORY, 0.085,
            flat(f"terr_{f['id']}", color, 0.62))
    tube(f"terr_rim_{f['id']}", pts + [pts[0]], 0.013, Z_TERRITORY + 0.012,
         flat(f"rim_{f['id']}", color, 1.0, glow=0.25), closed=True)


def build_route(f):
    """Маршрут — золотая трубка над плитой, с точками-узлами."""
    pts, _ = parse_points(f["geometry"])
    m = flat(f"route_{f['id']}", ROUTE_GOLD, 1.0, glow=0.35)
    tube(f"route_{f['id']}", pts, 0.017, Z_ROUTE, m)
    for x, y in (pts[0], pts[-1]):
        bpy.ops.mesh.primitive_uv_sphere_add(segments=16, ring_count=10,
                                             radius=0.030,
                                             location=w(x, y, Z_ROUTE))
        assign(bpy.context.object, m)


def build_cities(cities):
    """Города — золотые столбики на тёмном основании (метка SVG r=4.5)."""
    m_gold = flat("city", CITY_GOLD, 1.0, glow=0.3)
    m_dark = flat("city_base", CITY_RING, 1.0)
    for f in cities:
        cx, cy = (float(v) for v in f["geometry"].split(","))
        cylinder(f"city_b_{f['id']}", cx, cy, 7.0, Z_CITY - 0.055, 0.05, m_dark)
        cylinder(f"city_{f['id']}", cx, cy, 4.5, Z_CITY, 0.07, m_gold)


# ============================== СЦЕНА ==============================

def setup_scene(engine="eevee"):
    """Сцена карты.

    Рельефу, снятому строго сверху, объём даёт ТОЛЬКО освещение: в
    ортопроекции высота не двигает объект по XY. Поэтому здесь EEVEE с косым
    солнцем (классический hillshade: свет с северо-запада, ~40° над
    горизонтом) — в Workbench свет идёт почти вдоль камеры и склоны выходят
    одинаково плоскими. Слои рендерятся по одному процессу на слой
    (render_map.sh), иначе EEVEE в headless тормозит со второго кадра.
    """
    bpy.ops.wm.read_factory_settings(use_empty=True)
    scene = bpy.context.scene
    if engine == "workbench":
        scene.render.engine = "BLENDER_WORKBENCH"
        sh = scene.display.shading
        sh.light = "STUDIO"
        sh.color_type = "MATERIAL"
        sh.show_specular_highlight = False
        sh.show_cavity = True
        sh.cavity_type = "BOTH"
        sh.show_shadows = True
        sh.shadow_intensity = 0.42
        scene.display.render_aa = "16"
    else:
        for eng in ("BLENDER_EEVEE_NEXT", "BLENDER_EEVEE"):
            try:
                scene.render.engine = eng
                break
            except TypeError:
                continue
        # без трассировки: отражения карте не нужны, а кадр с ней шёл 5 минут
        scene.eevee.taa_render_samples = 16
        try:
            scene.eevee.use_raytracing = False
        except AttributeError:
            pass

        def sun(name, rot, energy, color=(1, 1, 1), angle=5, shadow=True):
            d = bpy.data.lights.new(name, "SUN")
            d.energy = energy
            d.color = color
            d.angle = math.radians(angle)     # мягкие тени дороги — держим узко
            d.use_shadow = shadow
            o = bpy.data.objects.new(name, d)
            o.rotation_euler = rot
            scene.collection.objects.link(o)

        # ключевой свет с северо-запада под 40° — лепит склоны и кладёт тени
        sun("key", (math.radians(50), 0, math.radians(-35)), 3.4)
        # холодная подсветка теневых склонов: без теней, только заполнение
        sun("fill", (math.radians(58), 0, math.radians(150)), 0.9,
            color=(0.62, 0.72, 0.95), shadow=False)

        world = bpy.data.worlds.new("world")
        world.use_nodes = True
        bg = world.node_tree.nodes["Background"]
        bg.inputs[0].default_value = (0.06, 0.08, 0.12, 1)
        bg.inputs[1].default_value = 0.55
        scene.world = world

    scene.render.resolution_x = RES_X
    scene.render.resolution_y = RES_Y
    scene.render.film_transparent = True
    scene.view_settings.view_transform = "Standard"

    cam_data = bpy.data.cameras.new("cam")
    cam_data.type = "ORTHO"
    cam_data.ortho_scale = SVG_W * S           # кадр = ровно viewBox по ширине
    cam = bpy.data.objects.new("cam", cam_data)
    cam.location = (SVG_W * S / 2, -SVG_H * S / 2, 12)
    cam.rotation_euler = (0, 0, 0)             # строго сверху: XY не смещается
    scene.collection.objects.link(cam)
    scene.camera = cam
    return scene


def render_pair(path_png):
    scene = bpy.context.scene
    scene.render.image_settings.file_format = "PNG"
    scene.render.image_settings.compression = 100
    scene.render.filepath = path_png
    bpy.ops.render.render(write_still=True)
    img = bpy.data.images["Render Result"]
    scene.render.image_settings.file_format = "WEBP"
    scene.render.image_settings.quality = 90
    img.save_render(path_png[:-4] + ".webp")


def clear(keep):
    for o in list(bpy.data.objects):
        if o.name not in keep:
            bpy.data.objects.remove(o, do_unlink=True)


def main():
    argv = sys.argv
    argv = argv[argv.index("--") + 1:] if "--" in argv else []
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=OUT_DEFAULT)
    ap.add_argument("--only", default="all",
                    choices=("all", "base", "territories", "routes", "cities"))
    ap.add_argument("--engine", default="eevee", choices=("eevee", "workbench"))
    ap.add_argument("--id", default="", help="один слой по id (для render_map.sh)")
    args = ap.parse_args(argv)

    features = json.load(open(DATA))
    territories = [f for f in features if f["kind"] == "TERRITORY"]
    routes = [f for f in features if f["kind"] == "ROUTE"]
    cities = [f for f in features if f["kind"] == "CITY"]

    os.makedirs(os.path.join(args.out, "layers"), exist_ok=True)
    manifest = {"frame": {"viewBox": [0, 0, SVG_W, SVG_H],
                          "width": RES_X, "height": RES_Y},
                "base": "base", "cities": "layers/cities",
                "territories": {}, "routes": {}}

    if args.id:                       # режим «один слой на процесс»
        territories = [f for f in territories if str(f["id"]) == args.id]
        routes = [f for f in routes if str(f["id"]) == args.id]

    setup_scene(args.engine)
    keep = {o.name for o in bpy.data.objects}

    if args.only in ("all", "base"):
        build_base()
        render_pair(os.path.join(args.out, "base.png"))
        clear(keep)
        print("BASE_OK", flush=True)

    if args.only in ("all", "territories"):
        # цвет по порядку внутри своей эпохи — как TERRITORY_COLORS на фронте
        seen = {}
        for f in territories:
            i = seen.get(f["era"], 0)
            seen[f["era"]] = i + 1
            build_territory(f, TERRITORY_COLORS[i % len(TERRITORY_COLORS)])
            rel = f"layers/territory-{f['id']}"
            render_pair(os.path.join(args.out, rel + ".png"))
            manifest["territories"][str(f["id"])] = rel
            clear(keep)
        print("TERRITORIES_OK", flush=True)

    if args.only in ("all", "routes"):
        for f in routes:
            build_route(f)
            rel = f"layers/route-{f['id']}"
            render_pair(os.path.join(args.out, rel + ".png"))
            manifest["routes"][str(f["id"])] = rel
            clear(keep)
        print("ROUTES_OK", flush=True)

    if args.only in ("all", "cities"):
        build_cities(cities)
        render_pair(os.path.join(args.out, "layers", "cities.png"))
        clear(keep)
        print("CITIES_OK", flush=True)

    if args.only == "all":
        with open(os.path.join(args.out, "manifest.json"), "w") as fh:
            json.dump(manifest, fh, ensure_ascii=False, indent=1)

    total = sum(os.path.getsize(os.path.join(dp, fn))
                for dp, _, fns in os.walk(args.out) for fn in fns)
    print(f"TOTAL_BYTES {total} ({total / 1e6:.2f} MB)")
    print("MAP_OK")


if __name__ == "__main__":
    main()
