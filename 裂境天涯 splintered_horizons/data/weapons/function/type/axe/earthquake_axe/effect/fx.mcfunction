# ===================================================
# 地震之斧 效果 特效 / earthquake axe effect visuals

    ## Guide [ function weapons:type/axe/earthquake_axe/effect/fx ] >>> 地震之斧 效果 特效 / earthquake axe effect visuals
    ## Guide [ function weapons:type/axe/earthquake_axe/effect/use ] >>> 地震之斧 效果 觸發 / earthquake axe effect activate

# ===================================================

scoreboard players add #weapon.earthquake_axe.fx particle 3

particle dust{color:[1.000,0.765,0.000],scale:1} ^ ^0.5 ^2.5 0 0 0 0 0 normal @a


execute rotated ~3 0 \
    if score #weapon.earthquake_axe.fx particle matches ..360 run \
function weapons:type/axe/earthquake_axe/effect/fx