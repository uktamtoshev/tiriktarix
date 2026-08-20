# -*- coding: utf-8 -*-
"""
32 предмета экипировки «Qurolxona» — процедурные меши (bpy).

Список — из avatar_items (миграции V11 + V12), внешний вид — по SVG-версиям
из frontend/src/components/art/Character.tsx (цвета в tools/blender/style.md).

Каждый предмет строится функцией build_item(code, anchors, p):
  anchors — якорные точки фигуры типажа (head, torso, hand_R, forearm_L, belt);
  p       — параметры телосложения (sh, ch, wa, li, ht, female) — предмет
            масштабируется и не пересекает тело ни на одной из 10 фигур.

Слои: SLOT_OF/LAYER_ORDER повторяют порядок наложения SVG.
"""

import math

import bpy

from character import (RED, SALLA, ZAR, ZAR_BRIGHT, box, carve, limb, loft,
                       material, sphere)

# металл → (base, light, dark, glow-эмиссия)
METALS = {
    "mis": ("#b87333", "#e0a06a", "#7d4a1e", 0.0),
    "kumush": ("#aeb9c9", "#eef3f9", "#6f7b8c", 0.0),
    "oltin": ("#a8801f", "#f3d98b", "#6b5010", 0.35),
}

WOOD = "#8a6740"
WOOD_LIGHT = "#9a7850"
WOOD_DARK = "#77593a"
STEEL = "#a7b3c4"
STEEL_LIGHT = "#e6ecf4"
GRIP = "#3a3128"
LEATHER = "#6b4c2e"
LEATHER_DARK = "#48311c"
LEATHER_BOSS = "#8a6740"
IRON = "#54617a"
IRON_DARK = "#3b4557"
ARROW = "#cfc4ad"

SLOT_OF = {
    "doppi": "HEAD", "dubulga": "HEAD", "mis-dubulga": "HEAD",
    "kumush-dubulga": "HEAD", "oltin-dubulga": "HEAD", "zar-dubulga": "HEAD",
    "zar-toj": "HEAD",
    "oddiy-chopon": "BODY", "charm-sovut": "BODY", "temir-sovut": "BODY",
    "ipak-chopon": "BODY", "zar-sovut": "BODY", "mis-sovut": "BODY",
    "kumush-sovut": "BODY", "oltin-sovut": "BODY",
    "yogoch-qilich": "WEAPON", "polat-qilich": "WEAPON",
    "kamon-sadoq": "WEAPON", "nayza": "WEAPON", "oybolta": "WEAPON",
    "sohibqiron-qilichi": "WEAPON", "sarkarda-nayzasi": "WEAPON",
    "ulugbek-kamoni": "WEAPON",
    "charm-qalqon": "SHIELD", "mis-qalqon": "SHIELD",
    "kumush-qalqon": "SHIELD", "oltin-qalqon": "SHIELD",
    "zar-qalqon": "SHIELD",
    "olov-tumor": "ACCESSORY", "ipak-kamar": "ACCESSORY",
    "navoiy-devoni": "ACCESSORY", "tug": "ACCESSORY",
}

# Порядок наложения слоёв — как в SVG (tug — за фигурой).
LAYER_ORDER = {"tug": 0, "base": 1, "BODY": 2, "HEAD": 3, "WEAPON": 4,
               "SHIELD": 5, "ACCESSORY": 6}


def _m(name, base, rough=0.75, metallic=0.0, glow=0.0):
    return material(f"item_{name}", base, rough=rough, metallic=metallic,
                    glow=glow)


def cylinder(name, r, depth, loc, rot=(math.pi / 2, 0, 0), mat=None,
             verts=28):
    bpy.ops.mesh.primitive_cylinder_add(vertices=verts, radius=r, depth=depth,
                                        location=loc, rotation=rot)
    obj = bpy.context.object
    obj.name = name
    if mat:
        from character import assign
        assign(obj, mat)
    return obj


def torus(name, major, minor, loc, rot=(math.pi / 2, 0, 0), mat=None):
    bpy.ops.mesh.primitive_torus_add(major_radius=major, minor_radius=minor,
                                     major_segments=32, minor_segments=10,
                                     location=loc, rotation=rot)
    obj = bpy.context.object
    obj.name = name
    if mat:
        from character import assign
        assign(obj, mat)
    return obj


def diamond(name, loc, scale, mat):
    """Гранёный ромбик — фирменный элемент (do'ppi, ipak-chopon)."""
    return sphere(name, 1.0, loc, scale=scale, mat=mat, seg=4, rings=2,
                  smooth=False)


def star8(prefix, loc, r, mat):
    """8-конечная звезда (zar/oltin) — лучи из центра."""
    sphere(prefix + "_c", 1.0, loc, scale=(r * 0.35, 0.03, r * 0.35),
           mat=mat, seg=8, rings=6)
    for i in range(8):
        a = i * math.pi / 4
        tip = (loc[0] + r * math.sin(a), loc[1], loc[2] + r * math.cos(a))
        limb(f"{prefix}_{i}", loc, tip, r * 0.16, 0.004, mat=mat, verts=6)


# ============================== ШЛЕМЫ ==============================

def helmet(a, base, light, dark, glow=0.0):
    zh = a["head"].z
    m_b = _m("h_" + base, base, glow=glow * 0.3)
    m_l = _m("hl_" + light, light, rough=0.5, metallic=0.4, glow=glow)
    m_d = _m("hd_" + dark, dark)
    carve(sphere("dome", 1.0, (0, 0.01, zh + 0.10),
                 scale=(0.355, 0.43, 0.46), mat=m_b, seg=28, rings=20),
          lambda c: c.z > 0.02)
    loft("band", [(zh + 0.06, 0.365, 0.44), (zh + 0.20, 0.355, 0.43)],
         mat=m_d)
    limb("spike", (0, 0.01, zh + 0.54), (0, 0.01, zh + 0.76), 0.035, 0.008,
         mat=m_l)
    box("nose", (0.05, 0.025, 0.24), (0, -0.40, zh + 0.02), mat=m_l)


def it_doppi(a, p):
    zh = a["head"].z
    carve(sphere("doppi", 1.0, (0, 0.01, zh + 0.14),
                 scale=(0.345, 0.415, 0.36), mat=_m("doppi", "#16202e"),
                 seg=24, rings=16), lambda c: c.z > 0.15)
    loft("doppi_band", [(zh + 0.16, 0.35, 0.425), (zh + 0.28, 0.34, 0.415)],
         mat=_m("doppi_d", "#0e1521"))
    m_zar = _m("zar", ZAR, rough=0.5, metallic=0.3)
    for ang in (-0.55, -0.18, 0.18, 0.55):
        diamond(f"doppi_gem_{ang}",
                (math.sin(ang) * 0.35, -math.cos(ang) * 0.42, zh + 0.22),
                (0.045, 0.025, 0.06), m_zar)


def it_zar_toj(a, p):
    zh = a["head"].z
    m_g = _m("toj", ZAR, rough=0.45, metallic=0.5, glow=0.15)
    loft("toj_band", [(zh + 0.12, 0.34, 0.415), (zh + 0.38, 0.33, 0.405)],
         mat=m_g)
    for ang in (-0.9, -0.45, 0, 0.45, 0.9):
        x, y = math.sin(ang) * 0.32, -math.cos(ang) * 0.39
        limb(f"toj_spike_{ang}", (x, y, zh + 0.36), (x, y, zh + 0.62),
             0.05, 0.005, mat=m_g, verts=8)
    sphere("toj_ruby", 1.0, (0, -0.40, zh + 0.25),
           scale=(0.05, 0.03, 0.05), mat=_m("red", RED), seg=10, rings=8)


def it_zar_dubulga(a, p):
    helmet(a, "#8a6d1a", ZAR_BRIGHT, ZAR, glow=0.3)
    zh = a["head"].z
    m_p = _m("plume", "#efe7d4")
    for i, (dx, dy, dz) in enumerate(((0.03, 0.0, 0.80), (0.12, 0.07, 0.87),
                                      (0.22, 0.15, 0.88))):
        sphere(f"plume_{i}", 1.0, (dx, dy, zh + dz),
               scale=(0.05, 0.05, 0.11 - 0.02 * i), mat=m_p, seg=10, rings=8)


ARMOR_Z = (4.55, 5.0, 5.55, 5.95, 6.10)


def armor_widths(p):
    """Сечения панциря — чуть шире туники соответствующего телосложения."""
    ch, sh, wa, fe = p["ch"], p["sh"], p["wa"], p["female"]
    chest = (0.76 if fe else 0.78) * ch
    top = (0.77 if fe else 0.80) * sh
    shl = (0.72 if fe else 0.74) * sh
    return [
        (0.67 * wa + 0.06, 0.47 * ch + 0.06),
        (0.71 * ch + 0.06, 0.49 * ch + 0.06),
        (chest + 0.06, 0.52 * ch + 0.06),
        (top + 0.06, 0.50 * ch + 0.06),
        (shl + 0.05, 0.46 * ch + 0.05),
    ]


# ============================== ДОСПЕХИ ==============================

def armor_shell(p, base_mat, name="armor"):
    ht = p["ht"]
    w = armor_widths(p)
    sections = [(z * ht, hw, hd) for z, (hw, hd) in zip(ARMOR_Z, w)]
    loft(name, sections, mat=base_mat)
    return sections


def plate_lines(p, mat, zs=(4.85, 5.15, 5.45)):
    ht = p["ht"]
    w = armor_widths(p)
    for z in zs:
        t = (z - ARMOR_Z[0]) / (ARMOR_Z[2] - ARMOR_Z[0])
        hw = w[0][0] + (w[2][0] - w[0][0]) * t + 0.015
        hd = w[0][1] + (w[2][1] - w[0][1]) * t + 0.015
        loft(f"plate_{z}", [(z * ht - 0.03, hw, hd), (z * ht + 0.03, hw, hd)],
             mat=mat)


def shoulder_pads(p, mat):
    ht, sh, li = p["ht"], p["sh"], p["li"]
    for s in (-1, 1):
        sphere(f"pad_{s}", 0.24 * li + 0.10, (s * 0.72 * sh, 0, 5.92 * ht),
               scale=(1, 0.95, 0.75), mat=mat, seg=18, rings=12)


def front_y(p):
    return -(0.52 * p["ch"] + 0.10)


def it_oddiy_chopon(a, p):
    armor_shell(p, _m("chopon", "#3d5245"))
    box("chopon_trim", (0.05, 0.03, 1.45 * p["ht"]),
        (0, front_y(p) + 0.02, 5.30 * p["ht"]),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.3))


def it_charm_sovut(a, p):
    armor_shell(p, _m("charm", LEATHER))
    plate_lines(p, _m("charm_d", LEATHER_DARK), zs=(4.95, 5.35))


def it_temir_sovut(a, p):
    armor_shell(p, _m("temir", IRON))
    plate_lines(p, _m("temir_d", IRON_DARK), zs=(4.85, 5.15, 5.45))


def it_ipak_chopon(a, p):
    armor_shell(p, _m("ipak", "#23686d"))
    m_zar = _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4)
    box("ipak_trim", (0.05, 0.03, 1.45 * p["ht"]),
        (0, front_y(p) + 0.02, 5.30 * p["ht"]), mat=m_zar)
    for sx in (-0.28, 0.28):
        for z in (5.05, 5.6):
            diamond(f"ipak_gem_{sx}_{z}", (sx, front_y(p) + 0.03, z * p["ht"]),
                    (0.05, 0.03, 0.07), m_zar)


def it_zar_sovut(a, p):
    armor_shell(p, _m("zarsovut", "#7a5f1c", glow=0.12))
    star8("zar_star", (0, front_y(p), 5.30 * p["ht"]), 0.28,
          _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4))


def metal_sovut(a, p, metal):
    base, light, dark, glow = METALS[metal]
    armor_shell(p, _m("sv_" + metal, base, rough=0.55, metallic=0.5,
                      glow=glow * 0.3))
    plate_lines(p, _m("svd_" + metal, dark))
    shoulder_pads(p, _m("svl_" + metal, light, rough=0.5, metallic=0.5,
                        glow=glow))
    if metal == "oltin":
        star8("oltin_star", (0, front_y(p), 5.30 * p["ht"]), 0.26,
              _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4, glow=0.4))


# ============================== ОРУЖИЕ ==============================

def sword(a, blade, blade_tip, guard, grip, pommel=None, glow=0.0):
    h = a["hand_R"]
    m_bl = _m("bl_" + blade, blade, rough=0.5, metallic=0.4, glow=glow)
    box("blade", (0.075, 0.03, 1.40), (h.x, h.y - 0.02, h.z + 0.90), mat=m_bl)
    limb("tip", (h.x, h.y - 0.02, h.z + 1.60),
         (h.x, h.y - 0.02, h.z + 1.78), 0.052, 0.004, mat=m_bl, verts=8)
    box("guard", (0.27, 0.06, 0.07), (h.x, h.y - 0.01, h.z + 0.18),
        mat=_m("gd_" + guard, guard, rough=0.5, metallic=0.4))
    box("grip", (0.05, 0.05, 0.24), (h.x, h.y, h.z - 0.16),
        mat=_m("gr_" + grip, grip))
    if pommel:
        sphere("pommel", 0.06, (h.x, h.y, h.z - 0.31),
               mat=_m("pm_" + pommel, pommel, rough=0.5, metallic=0.4),
               seg=12, rings=8)


def it_yogoch_qilich(a, p):
    sword(a, WOOD_LIGHT, WOOD_LIGHT, WOOD_DARK, WOOD_DARK)


def it_polat_qilich(a, p):
    sword(a, STEEL, STEEL_LIGHT, ZAR, GRIP, pommel=ZAR)


def it_sohibqiron(a, p):
    h = a["hand_R"]
    m_bl = _m("sq_blade", ZAR_BRIGHT, rough=0.4, metallic=0.5, glow=0.5)
    for i in range(5):
        box(f"sq_{i}", (0.075, 0.03, 0.36),
            (h.x - 0.045 * i * i * 0.55, h.y - 0.02, h.z + 0.28 + 0.31 * i),
            rot=(0, math.radians(-9 * i), 0), mat=m_bl)
    box("sq_guard", (0.28, 0.06, 0.08), (h.x, h.y - 0.01, h.z + 0.16),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.4))
    box("sq_grip", (0.055, 0.055, 0.26), (h.x, h.y, h.z - 0.16),
        mat=_m("sq_gr", "#5c4a1e"))
    sphere("sq_pommel", 0.065, (h.x, h.y, h.z - 0.32),
           mat=m_bl, seg=12, rings=8)


def spear(a, head_mat_hex, gold_band=False):
    h = a["hand_R"]
    m_w = _m("shaft", WOOD)
    limb("shaft", (h.x, h.y, 0.15), (h.x, h.y, 5.55), 0.030, 0.026, mat=m_w)
    m_h = _m("sp_" + head_mat_hex, head_mat_hex, rough=0.5, metallic=0.4)
    limb("sp_head", (h.x, h.y, 5.55), (h.x, h.y, 6.05), 0.10, 0.004, mat=m_h)
    if gold_band:
        loft("sp_band", [(5.50, 0.05, 0.05, h.x, h.y),
                         (5.58, 0.045, 0.045, h.x, h.y)],
             mat=_m("zar", ZAR, rough=0.5, metallic=0.4))


def it_nayza(a, p):
    spear(a, STEEL)


def it_sarkarda_nayzasi(a, p):
    spear(a, ZAR_BRIGHT, gold_band=True)
    h = a["hand_R"]
    box("flag", (0.52, 0.02, 0.30), (h.x + 0.30, h.y + 0.02, 5.28),
        mat=_m("red", RED))
    box("flag_edge", (0.52, 0.022, 0.03), (h.x + 0.30, h.y + 0.02, 5.12),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.4))


def it_oybolta(a, p):
    h = a["hand_R"]
    limb("ob_shaft", (h.x, h.y, 0.5), (h.x, h.y, 4.9), 0.032, 0.028,
         mat=_m("ob_w", "#7d5c38"))
    blade = cylinder("ob_blade", 0.44, 0.05, (h.x - 0.30, h.y, 4.30),
                     mat=_m("ob_s", STEEL, rough=0.5, metallic=0.4))
    carve(blade, lambda c: c.x < 0.35, r=0.44)
    box("ob_band", (0.10, 0.05, 0.07), (h.x, h.y, 4.30),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.4))


def bow(a, wood_hex, string_hex="#e2dbcb"):
    h = a["hand_R"]
    cz = h.z + 0.55
    b = torus("bow", 0.72, 0.032, (h.x, h.y - 0.02, cz))
    from character import assign
    assign(b, _m("bow_" + wood_hex, wood_hex))
    carve(b, lambda c: c.x < 0.30, r=0.72)
    box("string", (0.012, 0.012, 1.37), (h.x + 0.205, h.y - 0.02, cz),
        mat=_m("bowstr", string_hex))
    return cz


def it_kamon_sadoq(a, p):
    bow(a, WOOD)
    # колчан у пояса, с другой стороны от щита
    bx, bz = 0.52 * p["wa"] + 0.14, 4.35 * p["ht"]
    box("quiver", (0.15, 0.11, 0.55), (bx, 0.18, bz),
        rot=(0, math.radians(-14), 0), mat=_m("quiver", LEATHER))
    for i, dx in enumerate((-0.04, 0.0, 0.04)):
        limb(f"arrow_{i}", (bx + dx + 0.06, 0.18, bz + 0.25),
             (bx + dx + 0.13, 0.18, bz + 0.62), 0.012, 0.012,
             mat=_m("arrow", ARROW))


def it_ulugbek_kamoni(a, p):
    cz = bow(a, "#4a3f6b")
    h = a["hand_R"]
    m_s = _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4, glow=0.3)
    for ang in (150, 180, 210):
        r = math.radians(ang)
        diamond(f"ukstar_{ang}",
                (h.x + 0.72 * math.cos(r), h.y - 0.06, cz + 0.72 * math.sin(r)),
                (0.05, 0.03, 0.07), m_s)


# ============================== ЩИТЫ ==============================

def shield(a, base, light, dark, boss=None, star=False, glow=0.0):
    fa = a["forearm_L"]
    loc = (fa.x, fa.y - 0.10, fa.z)
    cylinder("sh_disc", 0.60, 0.07, loc,
             mat=_m("shb_" + base, base, rough=0.55, metallic=0.35,
                    glow=glow * 0.2))
    torus("sh_rim", 0.60, 0.035, loc, mat=_m("shd_" + dark, dark))
    torus("sh_ring", 0.42, 0.018, (loc[0], loc[1] - 0.03, loc[2]),
          mat=_m("shl_" + light, light, rough=0.5, metallic=0.4, glow=glow))
    if star:
        star8("sh_star", (loc[0], loc[1] - 0.06, loc[2]), 0.30,
              _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4, glow=0.4))
    else:
        sphere("sh_boss", 1.0, (loc[0], loc[1] - 0.045, loc[2]),
               scale=(0.13, 0.05, 0.13),
               mat=_m("shboss_" + (boss or light), boss or light,
                      rough=0.5, metallic=0.4), seg=16, rings=10)


def it_charm_qalqon(a, p):
    shield(a, LEATHER, ZAR, LEATHER_DARK, boss=LEATHER_BOSS)


def it_zar_qalqon(a, p):
    shield(a, "#7a5f1c", ZAR_BRIGHT, ZAR, star=True, glow=0.3)


# ============================== АКСЕССУАРЫ ==============================

def it_olov_tumor(a, p):
    ht, ch = p["ht"], p["ch"]
    m_c = _m("zar", ZAR, rough=0.5, metallic=0.3)
    pend = (0, -0.50 * ch - 0.12, 5.35 * ht)
    for s in (-1, 1):
        limb(f"cord_{s}", (s * 0.20, -0.30 * ch - 0.05, 6.28 * ht), pend,
             0.014, 0.014, mat=m_c, verts=8)
    diamond("tumor", pend, (0.11, 0.05, 0.15), _m("red", RED))


def it_ipak_kamar(a, p):
    ht, ch, wa = p["ht"], p["ch"], p["wa"]
    loft("kamar", [(4.60 * ht, 0.67 * wa + 0.085, 0.47 * ch + 0.085),
                   (4.90 * ht, 0.67 * wa + 0.075, 0.47 * ch + 0.075)],
         mat=_m("kamar", "#23686d"))
    box("kamar_buckle", (0.16, 0.05, 0.15),
        (0, -(0.47 * ch) - 0.10, 4.75 * ht),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.4))


def it_navoiy_devoni(a, p):
    ht, wa = p["ht"], p["wa"]
    bx = 0.50 * p["wa"] + 0.12
    box("book", (0.26, 0.11, 0.36), (bx, -0.30, 4.30 * ht),
        rot=(0, math.radians(-8), 0), mat=_m("book", "#7d3b2e"))
    box("book_spine", (0.035, 0.115, 0.37), (bx - 0.125, -0.30, 4.30 * ht),
        rot=(0, math.radians(-8), 0),
        mat=_m("zar", ZAR, rough=0.5, metallic=0.4))
    diamond("book_star", (bx + 0.02, -0.365, 4.30 * ht), (0.05, 0.02, 0.07),
            _m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4))


def it_tug(a, p):
    m_w = _m("shaft", WOOD)
    limb("tug_pole", (0.92, 0.30, 0.0), (0.92, 0.30, 8.15), 0.038, 0.030,
         mat=m_w)
    sphere("tug_ball", 0.07, (0.92, 0.30, 8.20),
           mat=_m("zar", ZAR, rough=0.5, metallic=0.4), seg=12, rings=8)
    limb("tug_tip", (0.92, 0.30, 8.26), (0.92, 0.30, 8.46), 0.045, 0.004,
         mat=_m("zar_b", ZAR_BRIGHT, rough=0.45, metallic=0.4))
    loft("tug_flag", [(7.30, 0.02, 0.24, 1.24, 0.30),
                      (7.90, 0.02, 0.28, 1.22, 0.30)],
         verts=12, mat=_m("red", RED))


# ============================== ДИСПЕТЧЕР ==============================

BUILDERS = {
    "doppi": it_doppi,
    "dubulga": lambda a, p: helmet(a, "#5d6a7c", "#78859a", "#4b5566"),
    "mis-dubulga": lambda a, p: helmet(a, *METALS["mis"][:3],
                                       glow=METALS["mis"][3]),
    "kumush-dubulga": lambda a, p: helmet(a, *METALS["kumush"][:3],
                                          glow=METALS["kumush"][3]),
    "oltin-dubulga": lambda a, p: helmet(a, *METALS["oltin"][:3],
                                         glow=METALS["oltin"][3]),
    "zar-dubulga": it_zar_dubulga,
    "zar-toj": it_zar_toj,
    "oddiy-chopon": it_oddiy_chopon,
    "charm-sovut": it_charm_sovut,
    "temir-sovut": it_temir_sovut,
    "ipak-chopon": it_ipak_chopon,
    "zar-sovut": it_zar_sovut,
    "mis-sovut": lambda a, p: metal_sovut(a, p, "mis"),
    "kumush-sovut": lambda a, p: metal_sovut(a, p, "kumush"),
    "oltin-sovut": lambda a, p: metal_sovut(a, p, "oltin"),
    "yogoch-qilich": it_yogoch_qilich,
    "polat-qilich": it_polat_qilich,
    "kamon-sadoq": it_kamon_sadoq,
    "nayza": it_nayza,
    "oybolta": it_oybolta,
    "sohibqiron-qilichi": it_sohibqiron,
    "sarkarda-nayzasi": it_sarkarda_nayzasi,
    "ulugbek-kamoni": it_ulugbek_kamoni,
    "charm-qalqon": it_charm_qalqon,
    "mis-qalqon": lambda a, p: shield(a, *METALS["mis"][:3],
                                      glow=METALS["mis"][3]),
    "kumush-qalqon": lambda a, p: shield(a, *METALS["kumush"][:3],
                                         glow=METALS["kumush"][3]),
    "oltin-qalqon": lambda a, p: shield(a, *METALS["oltin"][:3], star=True,
                                        glow=METALS["oltin"][3]),
    "zar-qalqon": it_zar_qalqon,
    "olov-tumor": it_olov_tumor,
    "ipak-kamar": it_ipak_kamar,
    "navoiy-devoni": it_navoiy_devoni,
    "tug": it_tug,
}

assert set(BUILDERS) == set(SLOT_OF), "предметы и слоты расходятся"


def build_item(code, anchors, p):
    BUILDERS[code](anchors, p)
