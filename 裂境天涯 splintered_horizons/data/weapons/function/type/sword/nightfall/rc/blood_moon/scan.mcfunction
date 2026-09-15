# ===================================================
# 劍 夜幕 血月 掃背包 / sword nightfall blood moon scan inventory

    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/scan ] >>> 劍 夜幕 血月 掃背包 / sword nightfall blood moon scan inventory
    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/timer ] >>> 劍 夜幕 血月 計時 / sword nightfall blood moon timer
    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/slot ] >>> 劍 夜幕 血月 單格 / sword nightfall blood moon single slot

# ===================================================

# 執行者 : 玩家
#
# item modify 一次只吃一個格子，所以只能 container.0 ~ 35 逐格走。
# 全部換完就提早收工，正常情況只會跑到那把劍所在的格子。
# 只在血月結束的那一 tick 跑一次，不是每 tick 掃。

execute \
    unless items entity @s container.* *[custom_data~{weapon:"nightfall",state:1b}] run \
return 0

execute \
    if score #slot weapon.nightfall.blood_moon matches 36.. run \
return 0

execute \
    store result storage weapons:nightfall temp.slot int 1 run \
scoreboard players get #slot weapon.nightfall.blood_moon

function weapons:type/sword/nightfall/rc/blood_moon/slot with storage weapons:nightfall temp

scoreboard players add #slot weapon.nightfall.blood_moon 1

function weapons:type/sword/nightfall/rc/blood_moon/scan
