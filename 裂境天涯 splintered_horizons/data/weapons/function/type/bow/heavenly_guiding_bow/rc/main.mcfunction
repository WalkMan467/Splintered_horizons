# ===================================================
# 天導神弓 右鍵 主迴圈 / heavenly guiding bow right click loop

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/main ] >>> 天導神弓 右鍵 主迴圈 / heavenly guiding bow right click loop
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/run ] >>> 天導神弓 右鍵 執行 / heavenly guiding bow right click run
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================


execute \
    if score @s weapon.heavenly_guiding_bow.use matches 1.. run \
return 0

stopsound @s voice minecraft:entity.warden.sonic_charge

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10.. run \
function weapons:type/bow/heavenly_guiding_bow/rc/run

scoreboard players reset @s weapon.heavenly_guiding_bow.use
scoreboard players reset @s weapon.heavenly_guiding_bow.hold_down

tag @s remove heavenly_guiding_bow.user