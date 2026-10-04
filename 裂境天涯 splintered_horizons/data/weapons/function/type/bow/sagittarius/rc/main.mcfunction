# ===================================================
# 弓 射手座 右鍵 主迴圈 / bow sagittarius right click loop

    ## Guide [ function weapons:type/bow/sagittarius/rc/main ] >>> 弓 射手座 右鍵 主迴圈 / bow sagittarius right click loop
    ## Guide [ function weapons:type/bow/sagittarius/rc/run ] >>> 弓 射手座 右鍵 執行 / bow sagittarius right click run
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================


execute \
    if score @s weapon.sagittarius.use matches 1.. run \
return 0

stopsound @s voice minecraft:entity.warden.sonic_charge

execute \
    if score @s weapon.sagittarius.hold_down matches 47.. run \
function weapons:type/bow/sagittarius/rc/run

scoreboard players reset @s weapon.sagittarius.use
scoreboard players reset @s weapon.sagittarius.hold_down

tag @s remove sagittarius.user