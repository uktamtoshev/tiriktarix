# -*- coding: utf-8 -*-
"""
Полный послойный рендер аватаров в frontend/public/avatar3d/.

  blender --background --python tools/blender/render_all.py
  (частично: -- --archetypes malika,jangchi  или  -- --items polat-qilich)

На каждый из 10 типажей: base.png (фигура с тенью) и по PNG на каждый из
32 предметов — предмет рендерится ОДИН в кадре, на своём якоре и в масштабе
этого телосложения. Камера и свет одни на все рендеры (setup_scene), поэтому
слои совпадают попиксельно, а фронт складывает их как SVG:
tug → base → BODY → HEAD → WEAPON → SHIELD → ACCESSORY.

Рядом с каждым PNG пишется WEBP (тот же кадр). manifest.json описывает слои,
слоты и порядок наложения.
"""

import argparse
import json
import os
import sys
import time

import bpy
import numpy as np

sys.path.append(os.path.dirname(os.path.abspath(__file__)))
import character as C          # noqa: E402
import items as I              # noqa: E402

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
OUT = os.path.join(ROOT, "frontend", "public", "avatar3d")


def clean_png(path):
    """Обнуляет RGB под прозрачной альфой — рендер оставляет там мусор,
    из-за которого PNG весит в 4-5 раз больше."""
    img = bpy.data.images.load(path)
    buf = np.empty(img.size[0] * img.size[1] * 4, dtype=np.float32)
    img.pixels.foreach_get(buf)
    rgba = buf.reshape(-1, 4)
    rgba[rgba[:, 3] == 0, 0:3] = 0
    img.pixels.foreach_set(buf)
    scene = bpy.context.scene
    scene.render.image_settings.file_format = "PNG"
    scene.render.image_settings.compression = 100
    img.save_render(path, scene=scene)
    bpy.data.images.remove(img)


def render_pair(path_png):
    """Рендер в PNG + WEBP того же кадра (слои совпадают)."""
    scene = bpy.context.scene
    scene.render.image_settings.file_format = "PNG"
    scene.render.image_settings.compression = 100
    scene.render.filepath = path_png
    bpy.ops.render.render(write_still=True)
    img = bpy.data.images["Render Result"]
    scene.render.image_settings.file_format = "WEBP"
    scene.render.image_settings.quality = 88
    img.save_render(path_png[:-4] + ".webp")
    clean_png(path_png)


def main():
    argv = sys.argv
    argv = argv[argv.index("--") + 1:] if "--" in argv else []
    ap = argparse.ArgumentParser()
    ap.add_argument("--archetypes", default="",
                    help="через запятую; пусто = все")
    ap.add_argument("--items", default="", help="через запятую; пусто = все")
    args = ap.parse_args(argv)
    archs = [a for a in args.archetypes.split(",") if a] or sorted(C.ARCHETYPES)
    codes = [c for c in args.items.split(",") if c] or sorted(I.BUILDERS)

    t0 = time.time()
    manifest = {
        "frame": {"width": 512, "height": 768},
        "order": I.LAYER_ORDER,
        "slots": I.SLOT_OF,
        "archetypes": {},
    }
    for arch in archs:
        adir = os.path.join(OUT, arch)
        os.makedirs(os.path.join(adir, "items"), exist_ok=True)

        # Вся сцена собирается ОДИН раз (фигура + все предметы), слои
        # рендерятся переключением hide_render — так шейдеры EEVEE
        # компилируются один раз на типаж, а не на каждый кадр.
        C.setup_scene()
        keep = {o.name for o in bpy.data.objects}
        anchors, p = C.build_figure(arch)
        figure = [o for o in bpy.data.objects if o.name not in keep]
        groups = {"base": figure}
        for code in codes:
            before = {o.name for o in bpy.data.objects}
            I.build_item(code, anchors, p)
            groups[code] = [o for o in bpy.data.objects
                            if o.name not in before]

        def show_only(group):
            for name, objs in groups.items():
                hide = objs is not group
                for o in objs:
                    o.hide_render = hide

        show_only(groups["base"])
        render_pair(os.path.join(adir, "base.png"))
        for code in codes:
            show_only(groups[code])
            render_pair(os.path.join(adir, "items", code + ".png"))

        manifest["archetypes"][arch] = {
            "base": f"{arch}/base",
            "items": {c: f"{arch}/items/{c}" for c in codes},
            "anchors": {k: [round(v, 3) for v in vec]
                        for k, vec in anchors.items()},
        }
        print(f"ARCH_DONE {arch} ({time.time() - t0:.0f}s)", flush=True)

    if len(archs) == len(C.ARCHETYPES) and len(codes) == len(I.BUILDERS):
        with open(os.path.join(OUT, "manifest.json"), "w") as f:
            json.dump(manifest, f, ensure_ascii=False, indent=1)

    total = 0
    for dirpath, _, files in os.walk(OUT):
        for fn in files:
            total += os.path.getsize(os.path.join(dirpath, fn))
    print(f"TOTAL_BYTES {total} ({total / 1e6:.2f} MB)")
    print(f"TOTAL_TIME {time.time() - t0:.0f}s")
    print("RENDER_ALL_OK")


if __name__ == "__main__":
    main()
