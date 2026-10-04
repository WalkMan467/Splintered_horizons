# ===================================================
# 風力劍 主迴圈 / wind sword loop

    ## Guide [ function weapons:type/sword/wind_sword/main ] >>> 風力劍 主迴圈 / wind sword loop
    ## Guide [ function weapons:type/sword/wind_sword/wind/summon ] >>> 風力劍 wind 召喚 / wind sword wind summon
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

scoreboard players add @s weapon.wind_sword.timer 1


execute \
    if score @s weapon.wind_sword.timer matches 1 run \
function weapons:type/sword/wind_sword/wind/summon

execute \
    if score @s weapon.wind_sword.timer matches 20 run \
function weapons:type/sword/wind_sword/wind/summon


execute \
    if score @s weapon.wind_sword.timer matches 20.. run \
tag @s remove wind_sword.user