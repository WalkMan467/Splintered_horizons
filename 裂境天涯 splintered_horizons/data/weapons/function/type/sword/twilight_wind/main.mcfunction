# ===================================================
# 劍 暮光之風 主迴圈 / sword twilight wind loop

    ## Guide [ function weapons:type/sword/twilight_wind/main ] >>> 劍 暮光之風 主迴圈 / sword twilight wind loop
    ## Guide [ function weapons:type/sword/twilight_wind/wind/summon ] >>> 劍 暮光之風 wind 召喚 / sword twilight wind wind summon
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

scoreboard players add @s weapon.twilight_wind.timer 1


execute \
    if score @s weapon.twilight_wind.timer matches 1 run \
function weapons:type/sword/twilight_wind/wind/summon

execute \
    if score @s weapon.twilight_wind.timer matches 5 run \
function weapons:type/sword/twilight_wind/wind/summon

execute \
    if score @s weapon.twilight_wind.timer matches 10 run \
function weapons:type/sword/twilight_wind/wind/summon

execute \
    if score @s weapon.twilight_wind.timer matches 15 run \
function weapons:type/sword/twilight_wind/wind/summon

execute \
    if score @s weapon.twilight_wind.timer matches 20 run \
function weapons:type/sword/twilight_wind/wind/summon


execute \
    if score @s weapon.twilight_wind.timer >= @s weapon.twilight_wind.gale_energy run \
tag @s remove twilight_wind.user