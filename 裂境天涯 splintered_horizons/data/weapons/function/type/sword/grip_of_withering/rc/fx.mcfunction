# ===================================================
# 劍 凋零之握 右鍵 特效 / sword grip of withering right click visuals

    ## Guide [ function weapons:type/sword/grip_of_withering/rc/fx ] >>> 劍 凋零之握 右鍵 特效 / sword grip of withering right click visuals
    ## Guide [ function weapons:type/sword/grip_of_withering/rc/use ] >>> 劍 凋零之握 右鍵 觸發 / sword grip of withering right click activate

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color:[0.051,1.000,0.651],to_color:[0.000,0.000,0.000],scale:1.5} ^ ^0.5 ^6 0 0 0 0 0 force @a

execute \
    rotated ~3 0 run \
function weapons:type/sword/grip_of_withering/rc/fx