# -*- coding: utf-8 -*-
"""
Процедурные 3D-фигуры персонажей «Tirik Tarix» — bpy, без ручной работы.

Повторяют БОЛЬШОЕ превью из «Qurolxona»
(frontend/src/components/art/WarriorFigure.tsx): рост 7.5 голов, туника с
воротником-стойкой, планкой и поясом, ковуши; палитра и фирменные элементы —
tools/blender/style.md. Чиби-карточки выбора типажа остаются SVG.

Запуск (headless):
  blender --background --python tools/blender/character.py -- \
      --archetype malika --out tools/blender/out/malika.png

Система координат: X — вправо (экран), Z — вверх, камера смотрит вдоль +Y,
ортографическая. Модуль U = высота головы; пол z=0; кадр 2:3 повторяет
viewBox 240×320 (U=38px, ноги y=296): по вертикали 320/38 U, низ −24/38 U.
Правая рука персонажа (слот WEAPON) — слева на экране, как в SVG.

Телосложение жёстко привязано к типажу (см. BUILDS/ARCHETYPES): jangchi и
sarkarda — muscular, kochmanchi и обе девушки-наездницы — athletic,
amirzoda/malika/olima — slim, oddiy — average. Женская поправка — уже плечи,
ниже рост. Якоря экипировки возвращаются из build_figure и зависят от
телосложения — манифест этапа 4 пишет их для каждого типажа отдельно.
"""

import argparse
import math
import sys

import bmesh
import bpy
from mathutils import Vector

# ============================== ПАЛИТРА (style.md) ==============================

SKIN = "#dcb18c"
SKIN_SHADE = "#c39a76"
HAIR = "#2e2721"
BEARD = "#3c332b"
EYE = "#241c15"
MOUTH = "#a5674f"
SHOE = "#4a3527"
ZAR = "#c8a247"
ZAR_BRIGHT = "#f3d98b"
RED = "#9b2e22"
SALLA = "#e8e2d2"
TELPAK_FUR = "#4a3524"
TELPAK_BAND = "#7d5c38"
QALPOQ = "#1b2230"
OLIMA_CAP = "#1e2647"
OLIMA_BAND = "#2b3566"

# Типаж → пол, телосложение, ткань, акцент, причёска, борода, убор.
ARCHETYPES = {
    "jangchi": dict(gender="male", build="muscular", cloth="#3b4655",
                    accent=RED, hair="back", beard="full", cap="peshonaband"),
    "sarkarda": dict(gender="male", build="muscular", cloth="#2b3040",
                     accent=ZAR_BRIGHT, hair="back", beard="full",
                     cap="sarkarda-qalpoq"),
    "kochmanchi": dict(gender="male", build="athletic", cloth="#6b4c2e",
                       accent="#d2a15c", hair="orim-yigit", beard="full",
                       cap="telpak"),
    "amirzoda": dict(gender="male", build="slim", cloth="#23686d",
                     accent=ZAR, hair="back", beard="short", cap="salla",
                     gold_hem=True),
    "oddiy-yigit": dict(gender="male", build="average", cloth="#8d8271",
                        accent=ZAR, hair="back", beard="full", cap=None),
    "jangchi-qiz": dict(gender="female", build="athletic", cloth="#3b4655",
                        accent=RED, hair="orim", cap="peshonaband"),
    "kochmanchi-qiz": dict(gender="female", build="athletic", cloth="#6b4c2e",
                           accent="#d2a15c", hair="orim", cap="telpak"),
    "malika": dict(gender="female", build="slim", cloth="#5a2a4a",
                   accent=ZAR_BRIGHT, hair="tugun", cap="tillakosh",
                   gold_hem=True),
    "olima": dict(gender="female", build="slim", cloth="#2b3566",
                  accent="#cdd8ef", hair="tugun", cap="olima-qalpoq"),
    "oddiy-qiz": dict(gender="female", build="average", cloth="#8d8271",
                      accent=ZAR, hair="uzun", cap=None),
}

# Множители телосложения: плечи, грудь, талия, конечности, рост.
BUILDS = {
    "muscular": dict(sh=1.22, ch=1.15, wa=1.08, li=1.25, ht=1.04),
    "athletic": dict(sh=1.08, ch=1.04, wa=0.95, li=1.08, ht=1.01),
    "average": dict(sh=1.00, ch=1.00, wa=1.00, li=1.00, ht=1.00),
    "slim": dict(sh=0.92, ch=0.93, wa=0.88, li=0.86, ht=1.00),
}
FEMALE_MOD = dict(sh=0.88, ch=0.95, wa=0.85, li=0.88, ht=0.96)


def body_params(gender, build):
    p = dict(BUILDS[build])
    if gender == "female":
        for k in p:
            p[k] *= FEMALE_MOD[k]
    return p


# ============================== МАТЕРИАЛЫ ==============================

def _lin(c):
    return c / 12.92 if c <= 0.04045 else ((c + 0.055) / 1.055) ** 2.4


def hex_rgba(h):
    h = h.lstrip("#")
    return (_lin(int(h[0:2], 16) / 255), _lin(int(h[2:4], 16) / 255),
            _lin(int(h[4:6], 16) / 255), 1.0)


def shade(hex_color, f):
    """Тон от цвета ткани — как shade() во фронтовом WarriorFigure."""
    h = hex_color.lstrip("#")
    ch = [max(0, min(255, round(int(h[i:i + 2], 16) * f))) for i in (0, 2, 4)]
    return "#" + "".join(f"{c:02x}" for c in ch)


def material(name, hex_color, rough=1.0, metallic=0.0, glow=0.0):
    """Плоский матовый материал без бликов (style.md)."""
    mat = bpy.data.materials.get(name)
    if mat:
        return mat
    mat = bpy.data.materials.new(name)
    mat.use_nodes = True
    bsdf = mat.node_tree.nodes["Principled BSDF"]
    bsdf.inputs["Base Color"].default_value = hex_rgba(hex_color)
    bsdf.inputs["Roughness"].default_value = rough
    bsdf.inputs["Metallic"].default_value = metallic
    try:
        bsdf.inputs["Specular IOR Level"].default_value = 0.0
    except KeyError:
        pass
    if glow:
        bsdf.inputs["Emission Color"].default_value = hex_rgba(hex_color)
        bsdf.inputs["Emission Strength"].default_value = glow
    # Workbench берёт viewport-цвет, а не ноды; лёгкое высветление
    # металла/свечения имитирует блик SVG
    c = hex_rgba(hex_color)
    lift = 0.25 * metallic + 0.35 * min(glow, 1.0)
    mat.diffuse_color = tuple(min(1.0, v + (1 - v) * lift) for v in c[:3]) + (1.0,)
    return mat


def assign(obj, mat):
    obj.data.materials.clear()
    obj.data.materials.append(mat)


def shade_smooth(obj):
    for poly in obj.data.polygons:
        poly.use_smooth = True
    return obj


# ============================== ПРИМИТИВЫ ==============================

def sphere(name, r, loc, scale=(1, 1, 1), mat=None, seg=24, rings=16,
           rot=(0, 0, 0), smooth=True):
    bpy.ops.mesh.primitive_uv_sphere_add(segments=seg, ring_count=rings,
                                         radius=r, location=loc, rotation=rot)
    obj = bpy.context.object
    obj.name = name
    obj.scale = scale
    if mat:
        assign(obj, mat)
    if smooth:
        shade_smooth(obj)
    return obj


def box(name, size, loc, rot=(0, 0, 0), mat=None):
    bpy.ops.mesh.primitive_cube_add(size=1, location=loc, rotation=rot)
    obj = bpy.context.object
    obj.name = name
    obj.scale = size
    if mat:
        assign(obj, mat)
    return obj


def limb(name, p1, p2, r1, r2, mat=None, verts=14, smooth=True):
    """Конечность: конус от p1 к p2 с радиусами r1 → r2."""
    p1, p2 = Vector(p1), Vector(p2)
    d = p2 - p1
    bpy.ops.mesh.primitive_cone_add(vertices=verts, radius1=r1, radius2=r2,
                                    depth=d.length, location=(p1 + p2) / 2)
    obj = bpy.context.object
    obj.name = name
    obj.rotation_euler = d.to_track_quat("Z", "Y").to_euler()
    if mat:
        assign(obj, mat)
    if smooth:
        shade_smooth(obj)
    return obj


def carve(obj, keep, r=1.0):
    """Оставляет грани, для которых keep(центр грани / r) истинно.

    Резка по координатам меша (до объектного scale) — предикаты пишутся в
    нормированном пространстве единичной сферы.
    """
    bm = bmesh.new()
    bm.from_mesh(obj.data)
    drop = [f for f in bm.faces if not keep(f.calc_center_median() / r)]
    bmesh.ops.delete(bm, geom=drop, context="FACES")
    bm.to_mesh(obj.data)
    bm.free()
    return obj


def loft(name, sections, verts=24, mat=None, smooth=True, closed=True):
    """Оболочка по горизонтальным эллиптическим сечениям снизу вверх.

    sections: [(z, half_w, half_d)] или [(z, half_w, half_d, cx, cy)].
    Даёт силуэт с перегибами (талия, подол) одним объектом.
    """
    bm = bmesh.new()
    rings = []
    for s in sections:
        z, hw, hd = s[0], s[1], s[2]
        cx, cy = (s[3], s[4]) if len(s) > 4 else (0.0, 0.0)
        rings.append([bm.verts.new((cx + hw * math.sin(a),
                                    cy + hd * math.cos(a), z))
                      for a in (2 * math.pi * i / verts for i in range(verts))])
    for lo, hi in zip(rings, rings[1:]):
        for i in range(verts):
            j = (i + 1) % verts
            bm.faces.new((lo[i], lo[j], hi[j], hi[i]))
    if closed:
        bm.faces.new(rings[0])
        bm.faces.new(rings[-1])
    bmesh.ops.recalc_face_normals(bm, faces=bm.faces[:])
    mesh = bpy.data.meshes.new(name)
    bm.to_mesh(mesh)
    bm.free()
    obj = bpy.data.objects.new(name, mesh)
    bpy.context.collection.objects.link(obj)
    if mat:
        assign(obj, mat)
    if smooth:
        shade_smooth(obj)
    return obj


def anchor(name, loc):
    empty = bpy.data.objects.new(name, None)
    empty.empty_display_size = 0.1
    empty.location = loc
    bpy.context.collection.objects.link(empty)
    return empty


# ============================== ЧАСТИ ФИГУРЫ ==============================

def hair_and_cap(look, p, m):
    """Причёска и стандартный головной убор. z-уровни уже с учётом роста."""
    ht = p["ht"]
    zc = 7.02 * ht                       # центр головы
    m_hair = m["hair"]
    m_dark = m["cloth_dark"]
    m_accent = material("accent_" + look["accent"], look["accent"], rough=0.6)

    hstyle = look.get("hair", "back")
    # Базовая «шапка» волос: открытый лоб, виски над ушами открыты
    def keep_hair(c):
        if abs(c.x) > 0.78 and c.y < 0.30 and c.z < 0.02:
            return False
        return c.z > -0.22 - 0.60 * c.y
    carve(sphere("hair", 1.0, (0, 0.012, zc + 0.01),
                 scale=(0.325, 0.40, 0.52), mat=m_hair, seg=28, rings=20),
          keep_hair)

    if hstyle == "orim":                 # две косы на грудь, завязки zar
        for sx in (-1, 1):
            z0 = zc - 0.35
            for i in range(5):
                t = i / 4
                sphere(f"braid_{sx}_{i}", 1.0,
                       (sx * (0.26 + 0.03 * t), -0.30 - 0.05 * t,
                        z0 - 0.42 * i),
                       scale=(0.105 - 0.012 * i, 0.09 - 0.008 * i,
                              0.16 - 0.008 * i),
                       mat=m_hair, seg=16, rings=10)
            sphere(f"braid_tie_{sx}", 1.0,
                   (sx * 0.38, -0.50, z0 - 4 * 0.42 - 0.14),
                   scale=(0.05, 0.05, 0.035), mat=m["zar"], seg=10, rings=8)
    elif hstyle == "orim-yigit":         # одна косичка кочевника
        z0 = zc - 0.30
        for i in range(4):
            sphere(f"braid_{i}", 1.0,
                   (0.33 + 0.02 * i, -0.10 + 0.04 * i, z0 - 0.30 * i),
                   scale=(0.06, 0.055, 0.11), mat=m_hair, seg=12, rings=8)
        sphere("braid_tie", 1.0, (0.39, 0.02, z0 - 3 * 0.30 - 0.10),
               scale=(0.035, 0.035, 0.025), mat=m["zar"], seg=10, rings=8)
    elif hstyle == "tugun":              # пучок
        sphere("tugun", 1.0, (0, 0.14, zc + 0.52),
               scale=(0.17, 0.17, 0.13), mat=m_hair, seg=16, rings=12)
    elif hstyle == "uzun":               # распущенные — пряди за плечами
        sphere("uzun_back", 1.0, (0, 0.26, zc - 0.75),
               scale=(0.30, 0.14, 0.72), mat=m_hair, seg=20, rings=14)
        for sx in (-1, 1):
            sphere(f"uzun_{sx}", 1.0, (sx * 0.33, 0.10, zc - 0.95),
                   scale=(0.11, 0.16, 0.55), mat=m_hair, seg=16, rings=10)

    cap = look.get("cap")
    if cap == "peshonaband":             # повязка с ромбом
        loft("band", [(zc + 0.10, 0.335, 0.41), (zc + 0.24, 0.325, 0.40)],
             mat=m_dark)
        sphere("band_gem", 1.0, (0, -0.40, zc + 0.17),
               scale=(0.055, 0.03, 0.075), mat=m_accent, seg=8, rings=6,
               smooth=False)
    elif cap == "telpak":                # меховая шапка
        loft("telpak", [(zc + 0.06, 0.37, 0.44), (zc + 0.34, 0.38, 0.45),
                        (zc + 0.42, 0.33, 0.40)], mat=m["telpak_band"])
        carve(sphere("telpak_top", 1.0, (0, 0, zc + 0.30),
                     scale=(0.35, 0.42, 0.33), mat=m["telpak_fur"],
                     seg=20, rings=14), lambda c: c.z > 0.2)
    elif cap == "salla":                 # тюрбан с камнем
        for i, (dz, s) in enumerate(((0.14, 0.40), (0.32, 0.36))):
            sphere(f"salla_{i}", 1.0, (0, 0, zc + dz),
                   scale=(s, s * 1.12, 0.16), mat=m["salla"], seg=24, rings=12)
        sphere("salla_top", 1.0, (0, 0, zc + 0.42),
               scale=(0.26, 0.30, 0.14), mat=m["salla"], seg=20, rings=12)
        sphere("salla_gem", 1.0, (0, -0.36, zc + 0.34),
               scale=(0.05, 0.03, 0.07), mat=m_accent, seg=8, rings=6,
               smooth=False)
    elif cap == "sarkarda-qalpoq":       # высокий калпок с пером
        loft("qalpoq", [(zc + 0.10, 0.36, 0.43), (zc + 0.55, 0.28, 0.33),
                        (zc + 0.95, 0.13, 0.16)], mat=m["qalpoq"])
        loft("qalpoq_band", [(zc + 0.08, 0.375, 0.445),
                             (zc + 0.22, 0.365, 0.435)], mat=m["zar"])
        sphere("feather", 1.0, (0.17, -0.06, zc + 1.02),
               scale=(0.05, 0.03, 0.22), mat=m["red"], seg=10, rings=8,
               rot=(0, math.radians(18), 0))
    elif cap == "tillakosh":             # золотая тиара с рубинами
        loft("tillakosh", [(zc + 0.12, 0.34, 0.415), (zc + 0.28, 0.33, 0.405)],
             mat=m["zar"])
        for i, sx in enumerate((-0.13, 0, 0.13)):
            sphere(f"ruby_{i}", 1.0,
                   (sx, -0.385, zc + 0.20 + (0.05 if sx == 0 else 0)),
                   scale=(0.045 if sx == 0 else 0.035,) * 2 + (0.05,),
                   mat=m["red"], seg=10, rings=8)
    elif cap == "olima-qalpoq":          # синий калпок со звездой
        carve(sphere("olima_cap", 1.0, (0, 0, zc + 0.16),
                     scale=(0.35, 0.42, 0.36), mat=m["olima_cap"],
                     seg=20, rings=14), lambda c: c.z > 0.05)
        loft("olima_band", [(zc + 0.10, 0.36, 0.435),
                            (zc + 0.22, 0.35, 0.425)], mat=m["olima_band"])
        sphere("olima_star", 1.0, (0, -0.36, zc + 0.34),
               scale=(0.06, 0.03, 0.06), mat=m_accent, seg=8, rings=6,
               smooth=False)


def build_figure(archetype):
    """Строит фигуру типажа, возвращает якорные точки экипировки."""
    look = ARCHETYPES[archetype]
    gender = look["gender"]
    p = body_params(gender, look["build"])
    sh, ch, wa, li, ht = p["sh"], p["ch"], p["wa"], p["li"], p["ht"]
    female = gender == "female"

    cloth = look["cloth"]
    m = {
        "skin": material("skin", SKIN, rough=0.9),
        "skin_sh": material("skin_sh", SKIN_SHADE, rough=0.9),
        "hair": material("hair", HAIR),
        "beard": material("beard", BEARD),
        "eye": material("eye", EYE, rough=0.4),
        "mouth": material("mouth", MOUTH),
        "shoe": material("shoe", SHOE, rough=0.8),
        "zar": material("zar", ZAR, rough=0.5, metallic=0.3),
        "red": material("red", RED),
        "salla": material("salla", SALLA),
        "telpak_fur": material("telpak_fur", TELPAK_FUR),
        "telpak_band": material("telpak_band", TELPAK_BAND),
        "qalpoq": material("qalpoq", QALPOQ),
        "olima_cap": material("olima_cap", OLIMA_CAP),
        "olima_band": material("olima_band", OLIMA_BAND),
        "cloth": material("cloth_" + cloth, cloth),
        "cloth_dark": material("cloth_d_" + cloth, shade(cloth, 0.7)),
        "cloth_edge": material("cloth_e_" + cloth, shade(cloth, 0.52)),
        "trousers": material("trous_" + cloth, shade(cloth, 1.14)),
    }

    # --- уровни (модули головы × рост) ---
    z_knee, z_crotch = 2.00 * ht, 3.55 * ht
    z_hem = (1.68 if female else 2.90) * ht
    z_waist, z_chest = 4.75 * ht, 5.55 * ht
    z_shoulder, z_head = 6.08 * ht, 7.02 * ht

    # --- ноги (штаны/лозим) и ковуши ---
    leg_x = 0.46 * wa
    for s, nm in ((-1, "R"), (1, "L")):
        loft(f"leg_{nm}", [
            (0.15, 0.155 * li, 0.165 * li, s * leg_x, -0.02),
            (z_knee, 0.185 * li, 0.20 * li, s * leg_x, 0),
            (z_crotch, 0.26 * li, 0.28 * li, s * (leg_x - 0.02), 0),
            (z_waist - 0.4 * ht, 0.28 * li, 0.30 * li, s * (leg_x - 0.04), 0),
        ], mat=m["trousers"])
        a = s * math.radians(7)
        box(f"shoe_{nm}", (0.30, 0.66, 0.13),
            (s * leg_x, -0.14, 0.065), rot=(0, 0, a), mat=m["shoe"])
        sphere(f"toe_{nm}", 1.0,
               (s * leg_x + 0.34 * math.sin(a), -0.14 - 0.34 * math.cos(a),
                0.06),
               scale=(0.15, 0.12, 0.065), mat=m["shoe"], rot=(0, 0, a),
               seg=16, rings=10)
    if not female:
        box("seat", (0.84 * wa, 0.56 * ch, 0.8 * ht),
            (0, 0, z_crotch + 0.3 * ht), mat=m["trousers"])

    # --- туника / платье: перегибы в талии, покатые плечи ---
    if female:
        sections = [
            (z_hem, 0.89 * wa, 0.56 * ch),
            (2.6 * ht, 0.80 * wa, 0.52 * ch),
            (3.6 * ht, 0.72 * wa, 0.49 * ch),
            (z_waist, 0.67 * wa, 0.46 * ch),
            (5.2 * ht, 0.70 * ch, 0.49 * ch),
            (z_chest, 0.76 * ch, 0.51 * ch),
            (5.95 * ht, 0.77 * sh, 0.49 * ch),
            (z_shoulder, 0.72 * sh, 0.45 * ch),
            (6.34 * ht, 0.50, 0.36),
        ]
    else:
        sections = [
            (z_hem, 0.80 * wa, 0.56 * ch),
            (3.7 * ht, 0.76 * wa, 0.54 * ch),
            (4.3 * ht, 0.70 * wa, 0.50 * ch),
            (z_waist, 0.67 * wa, 0.47 * ch),
            (5.2 * ht, 0.70 * ch, 0.50 * ch),
            (z_chest, 0.78 * ch, 0.52 * ch),
            (5.95 * ht, 0.80 * sh, 0.50 * ch),
            (z_shoulder, 0.74 * sh, 0.46 * ch),
            (6.34 * ht, 0.50, 0.36),
        ]
    loft("tunic", sections, mat=m["cloth"])
    if look.get("gold_hem"):
        loft("gold_hem", [(z_hem - 0.01, sections[0][1] + 0.015,
                           sections[0][2] + 0.015),
                          (z_hem + 0.09, sections[0][1] + 0.005,
                           sections[0][2] + 0.005)], mat=m["zar"])
    loft("collar", [(6.26 * ht, 0.285, 0.27), (6.62 * ht, 0.27, 0.255)],
         mat=m["cloth"])

    # планка с пуговицами и матерчатый пояс со свисающим концом
    front_y = -0.53 * ch
    box("placket", (0.10, 0.03, 1.10 * ht), (0, front_y, 5.70 * ht),
        mat=m["cloth_dark"])
    for i, zz in enumerate((5.48, 5.76, 6.04)):
        sphere(f"button_{i}", 1.0, (0, front_y - 0.02, zz * ht),
               scale=(0.032, 0.02, 0.032), mat=m["cloth_edge"], seg=10,
               rings=8)
    loft("belt", [(z_waist - 0.03, sections[3][1] + 0.03, 0.47 * ch + 0.03),
                  (z_waist + 0.09, sections[3][1] + 0.02, 0.47 * ch + 0.02)],
         mat=m["cloth_dark"])
    box("belt_knot", (0.09, 0.035, 0.08),
        (0.03, -(0.47 * ch) - 0.045, z_waist + 0.02), mat=m["cloth_dark"])
    tail_len = (1.55 if female else 1.35) * ht
    box("belt_tail", (0.038, 0.022, tail_len),
        (0.03, -(0.47 * ch) - 0.055, z_waist - 0.1 - tail_len / 2),
        mat=m["cloth_dark"])

    # --- руки вдоль тела; рукав до запястья, кисти открыты ---
    sh_soft = 1 + (sh - 1) * 0.6         # запястья уводим слабее, чем плечи
    hands = {}
    for s, nm in ((-1, "R"), (1, "L")):
        p_sh = Vector((s * 0.72 * sh, 0, 5.90 * ht))
        p_el = Vector((s * 0.78 * sh_soft, -0.03, 4.72 * ht))
        p_wr = Vector((s * 0.82 * sh_soft, -0.07, 3.62 * ht))
        r_el = 0.19 * li + 0.04
        sphere(f"shoulder_{nm}", 0.22 * li + 0.06, p_sh, scale=(1, 0.92, 1),
               mat=m["cloth"], seg=18, rings=12)
        limb(f"sleeve_{nm}", p_sh, p_el, 0.23 * li + 0.05, r_el,
             mat=m["cloth"])
        sphere(f"elbow_{nm}", r_el * 0.98, p_el, mat=m["cloth"], seg=14,
               rings=10)
        limb(f"cuff_{nm}", p_el, p_wr, r_el, 0.13 * li + 0.035,
             mat=m["cloth"])
        hand = p_wr + Vector((0, -0.01, -0.28))
        sphere(f"hand_{nm}", 1.0, hand, scale=(0.115, 0.095, 0.27),
               mat=m["skin"], seg=16, rings=12,
               rot=(math.radians(-6), 0, s * math.radians(4)))
        hands[nm] = hand

    # --- шея и голова ---
    loft("neck", [(5.85 * ht, 0.21, 0.20), (6.60 * ht, 0.19, 0.19)],
         mat=m["skin_sh"])
    sphere("head", 1.0, (0, 0, z_head), scale=(0.31, 0.38, 0.50),
           mat=m["skin"], seg=32, rings=24)
    for s in (-1, 1):
        sphere(f"ear_{s}", 1.0, (s * 0.305, 0.03, z_head - 0.06),
               scale=(0.035, 0.075, 0.115), mat=m["skin"], seg=12, rings=8)
        if female:
            sphere(f"earring_{s}", 1.0, (s * 0.31, 0.02, z_head - 0.20),
                   scale=(0.028, 0.028, 0.035), mat=m["zar"], seg=8, rings=6)

    # --- лицо: брови, глаза, нос; рот у женщин, борода у мужчин ---
    for s in (-1, 1):
        sphere(f"eye_{s}", 1.0, (s * 0.155, -0.305, z_head - 0.02),
               scale=(0.085, 0.05, 0.037), mat=m["eye"], seg=14, rings=8)
        box(f"brow_{s}", (0.185, 0.06, 0.048),
            (s * 0.155, -0.335, z_head + 0.115),
            rot=(0, s * math.radians(4), 0), mat=m["hair"])
    limb("nose", (0, -0.235, z_head + 0.11), (0, -0.345, z_head - 0.20),
         0.045, 0.085, mat=m["skin"], verts=10)
    sphere("nose_tip", 1.0, (0, -0.360, z_head - 0.19),
           scale=(0.075, 0.06, 0.055), mat=m["skin_sh"], seg=14, rings=8)
    if female or not look.get("beard"):
        sphere("mouth", 1.0, (0, -0.375, z_head - 0.38),
               scale=(0.115, 0.035, 0.034), mat=m["mouth"], seg=12, rings=8)
    elif look["beard"] == "short":
        carve(sphere("beard", 1.0, (0, -0.05, z_head - 0.62),
                     scale=(0.295, 0.35, 0.40), mat=m["beard"],
                     seg=28, rings=20),
              lambda c: c.y < 0.25 and c.z < 0.55 + 0.45 * abs(c.x))
        box("moustache", (0.30, 0.10, 0.09), (0, -0.32, z_head - 0.265),
            mat=m["beard"])
    else:
        carve(sphere("beard", 1.0, (0, -0.05, z_head - 0.64),
                     scale=(0.298, 0.36, 0.58), mat=m["beard"],
                     seg=28, rings=20),
              lambda c: c.y < 0.25 and c.z < 0.638 + 0.45 * abs(c.x))
        box("moustache", (0.30, 0.10, 0.09), (0, -0.32, z_head - 0.265),
            mat=m["beard"])

    hair_and_cap(look, p, m)

    # --- мягкая тень на «полу» (в SVG — radial gradient) ---
    shadow_mat = bpy.data.materials.get("floor_shadow")
    if not shadow_mat:
        # несветящийся и нерассеивающий диск: только чёрная альфа-маска,
        # свет сцены на него не влияет
        shadow_mat = bpy.data.materials.new("floor_shadow")
        shadow_mat.use_nodes = True
        nt = shadow_mat.node_tree
        nt.nodes.remove(nt.nodes["Principled BSDF"])
        out = nt.nodes["Material Output"]
        transp = nt.nodes.new("ShaderNodeBsdfTransparent")
        emit = nt.nodes.new("ShaderNodeEmission")
        emit.inputs["Color"].default_value = (0, 0, 0, 1)
        mix = nt.nodes.new("ShaderNodeMixShader")
        grad = nt.nodes.new("ShaderNodeTexGradient")
        grad.gradient_type = "SPHERICAL"
        mapping = nt.nodes.new("ShaderNodeMapping")
        mapping.inputs["Scale"].default_value = (0.9, 0.9, 0.9)
        coord = nt.nodes.new("ShaderNodeTexCoord")
        power = nt.nodes.new("ShaderNodeMath")
        power.operation = "MULTIPLY"
        power.inputs[1].default_value = 0.55
        nt.links.new(coord.outputs["Object"], mapping.inputs["Vector"])
        nt.links.new(mapping.outputs["Vector"], grad.inputs["Vector"])
        nt.links.new(grad.outputs["Fac"], power.inputs[0])
        nt.links.new(power.outputs["Value"], mix.inputs["Fac"])
        nt.links.new(transp.outputs["BSDF"], mix.inputs[1])
        nt.links.new(emit.outputs["Emission"], mix.inputs[2])
        nt.links.new(mix.outputs["Shader"], out.inputs["Surface"])
        shadow_mat.surface_render_method = "BLENDED"
        shadow_mat.use_backface_culling = True
        shadow_mat.diffuse_color = (0, 0, 0, 0.28)   # workbench-вариант тени
    sphere("floor_shadow", 1.0, (0, 0, -0.02), scale=(1.25, 0.55, 0.04),
           mat=shadow_mat, seg=24, rings=12)

    # --- якорные точки экипировки (для предметов и манифеста этапа 4) ---
    anchors = {
        "head": anchor("anchor_head", (0, 0, z_head)).location.copy(),
        "torso": anchor("anchor_torso", (0, 0, 5.5 * ht)).location.copy(),
        "hand_R": anchor("anchor_hand_R", hands["R"]).location.copy(),
        "forearm_L": anchor("anchor_forearm_L",
                            hands["L"] + Vector((0, -0.05, 0.55))
                            ).location.copy(),
        "belt": anchor("anchor_belt",
                       (0, -0.47 * ch - 0.05, z_waist)).location.copy(),
    }
    return anchors, dict(p, female=female)


# ============================== СЦЕНА ==============================

# Кадр повторяет viewBox 240×320: U=38px, ноги y=296 → низ −24/38 U.
CANVAS_H = 320 / 38
CANVAS_BOTTOM = -24 / 38


def setup_scene(width=512, height=768, engine="workbench"):
    bpy.ops.wm.read_factory_settings(use_empty=True)
    scene = bpy.context.scene
    if engine == "cycles":
        scene.render.engine = "CYCLES"
        scene.cycles.device = "CPU"
        scene.cycles.samples = 32
        scene.cycles.use_denoising = True
    elif engine == "workbench":
        # Плоская заливка: быстрая (доли секунды) и стабильная в headless —
        # у EEVEE на Intel-Mac второй и последующие рендеры в одном процессе
        # деградируют до минут. Объём дают cavity и мягкая тень.
        scene.render.engine = "BLENDER_WORKBENCH"
        sh = scene.display.shading
        sh.light = "FLAT"
        sh.color_type = "MATERIAL"
        sh.show_cavity = True
        sh.cavity_type = "WORLD"
        sh.cavity_ridge_factor = 0.4
        sh.cavity_valley_factor = 0.9
        sh.show_shadows = True
        sh.shadow_intensity = 0.25
        scene.display.render_aa = "8"
    else:
        for eng in ("BLENDER_EEVEE_NEXT", "BLENDER_EEVEE"):
            try:
                scene.render.engine = eng
                break
            except TypeError:
                continue
        # плоский стиль — мало сэмплов; на Intel-Mac каждый дорог
        scene.eevee.taa_render_samples = 16
    scene.render.resolution_x = width
    scene.render.resolution_y = height
    scene.render.film_transparent = True
    scene.render.image_settings.file_format = "PNG"
    scene.render.image_settings.color_mode = "RGBA"
    # честные цвета палитры вместо киношного AgX
    scene.view_settings.view_transform = "Standard"

    cam_data = bpy.data.cameras.new("cam")
    cam_data.type = "ORTHO"
    cam_data.ortho_scale = CANVAS_H
    cam = bpy.data.objects.new("cam", cam_data)
    cam.location = (0, -12, CANVAS_BOTTOM + CANVAS_H / 2)
    cam.rotation_euler = (math.pi / 2, 0, 0)
    scene.collection.objects.link(cam)
    scene.camera = cam

    def sun(name, rot, energy, color=(1, 1, 1)):
        data = bpy.data.lights.new(name, "SUN")
        data.energy = energy
        data.color = color
        data.angle = math.radians(25)
        obj = bpy.data.objects.new(name, data)
        obj.rotation_euler = rot
        scene.collection.objects.link(obj)

    # мягкий детский свет: ключ спереди-сверху, лёгкий тёплый контровой (zar)
    sun("key", (math.radians(55), 0, math.radians(-18)), 2.4)
    sun("rim", (math.radians(120), 0, math.radians(160)), 1.4,
        color=(1.0, 0.87, 0.58))
    world = bpy.data.worlds.new("world")
    world.use_nodes = True
    bg = world.node_tree.nodes["Background"]
    bg.inputs[0].default_value = (0.85, 0.86, 0.9, 1)
    bg.inputs[1].default_value = 0.55
    scene.world = world
    return scene


def render_to(path):
    bpy.context.scene.render.filepath = str(path)
    bpy.ops.render.render(write_still=True)


# ============================== CLI ==============================

def main():
    argv = sys.argv
    argv = argv[argv.index("--") + 1:] if "--" in argv else []
    ap = argparse.ArgumentParser()
    ap.add_argument("--archetype", default="oddiy-yigit",
                    choices=sorted(ARCHETYPES))
    ap.add_argument("--out", default="tools/blender/out/test.png")
    ap.add_argument("--width", type=int, default=512)
    ap.add_argument("--height", type=int, default=768)
    ap.add_argument("--engine", default="workbench",
                    choices=("workbench", "eevee", "cycles"))
    args = ap.parse_args(argv)

    setup_scene(args.width, args.height, engine=args.engine)
    anchors, _ = build_figure(args.archetype)
    render_to(args.out)
    print("ANCHORS:", {k: tuple(round(c, 3) for c in v)
                       for k, v in anchors.items()})
    print("RENDER_OK:", args.out)


if __name__ == "__main__":
    main()
