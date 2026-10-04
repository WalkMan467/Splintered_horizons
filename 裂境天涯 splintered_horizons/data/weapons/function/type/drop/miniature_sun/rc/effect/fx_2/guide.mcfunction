# ===================================================
# 投擲 微型太陽 右鍵 效果 fx 2 分派 / thrown miniature sun right click effect fx 2 dispatch

    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide ] >>> 投擲 微型太陽 右鍵 效果 fx 2 分派 / thrown miniature sun right click effect fx 2 dispatch
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx_2/use ] >>> 投擲 微型太陽 右鍵 效果 fx 2 觸發 / thrown miniature sun right click effect fx 2 activate
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/run ] >>> 投擲 微型太陽 右鍵 效果 執行 / thrown miniature sun right click effect run

# ===================================================

# warn-off-file target-selector-no-dimension

execute \
    as @e[tag=weapon.miniature_sun.main.fx,type=area_effect_cloud] at @s rotated 0 -90 run \
function weapons:type/drop/miniature_sun/rc/effect/fx_2/use

schedule function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide 10t