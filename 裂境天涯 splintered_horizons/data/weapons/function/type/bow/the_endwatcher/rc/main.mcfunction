# ===================================================
# 弓 終焉凝視者 右鍵 主迴圈 / bow the endwatcher right click loop

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/main ] >>> 弓 終焉凝視者 右鍵 主迴圈 / bow the endwatcher right click loop
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/fire ] >>> 弓 終焉凝視者 右鍵 放箭 / bow the endwatcher right click fire
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

# 執行者 : 玩家
#
# use 這個分數每 tick 由 rc/use 設成 1，再由 weapons:timer_t 扣回去
# 放開弓的那一 tick 它會是 0，這裡就知道箭射出去了

execute \
    if score @s weapon.the_endwatcher.use matches 1.. run \
return 0

stopsound @s voice minecraft:entity.warden.sonic_charge

execute \
    if score @s weapon.the_endwatcher.stage matches 2 run \
function weapons:type/bow/the_endwatcher/rc/fire

scoreboard players reset @s weapon.the_endwatcher.use
scoreboard players reset @s weapon.the_endwatcher.hold_down
scoreboard players reset @s weapon.the_endwatcher.stage

tag @s remove the_endwatcher.user
