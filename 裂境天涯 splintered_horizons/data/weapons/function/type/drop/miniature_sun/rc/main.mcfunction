# ===================================================
# 投擲 微型太陽 右鍵 主迴圈 / thrown miniature sun right click loop

    ## Guide [ function weapons:type/drop/miniature_sun/rc/main ] >>> 投擲 微型太陽 右鍵 主迴圈 / thrown miniature sun right click loop
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/run ] >>> 投擲 微型太陽 右鍵 效果 執行 / thrown miniature sun right click effect run
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/entity ] >>> 投擲 微型太陽 右鍵 效果 特效 entity / thrown miniature sun right click effect visuals entity
    ## Guide [ function main:load ] >>> load / load
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================


execute \
    as @e[tag=weapon.miniature_sun.drop,distance=0..,type=item] at @s \
    unless block ~ ~-0.1 ~ #penetrate run \
function weapons:type/drop/miniature_sun/rc/effect/run


execute \
    as @e[tag=weapon.miniature_sun.main,distance=0..,type=area_effect_cloud] at @s run \
function weapons:type/drop/miniature_sun/rc/effect/fx/entity