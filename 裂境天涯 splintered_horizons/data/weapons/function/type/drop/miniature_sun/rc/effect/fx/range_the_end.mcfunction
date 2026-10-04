# ===================================================
# 投擲 微型太陽 右鍵 效果 特效 range the end / thrown miniature sun right click effect visuals range the end

    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/range_the_end ] >>> 投擲 微型太陽 右鍵 效果 特效 range the end / thrown miniature sun right click effect visuals range the end
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/entity ] >>> 投擲 微型太陽 右鍵 效果 特效 entity / thrown miniature sun right click effect visuals entity

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color:[0.800,0.000,1.000],to_color:[0.000,0.051,0.035],scale:1.0} ^ ^-0.5 ^5 0 0 0 1 0 normal @a


execute \
    rotated ~3 0 run \
function weapons:type/drop/miniature_sun/rc/effect/fx/range_the_end