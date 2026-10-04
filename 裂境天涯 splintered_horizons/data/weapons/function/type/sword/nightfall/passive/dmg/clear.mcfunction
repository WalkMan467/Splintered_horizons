# ===================================================
# 劍 夜幕 被動 傷害 清除 / sword nightfall passive damage clear

    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/clear ] >>> 劍 夜幕 被動 傷害 清除 / sword nightfall passive damage clear
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/blade_main ] >>> 劍 夜幕 被動 傷害 blade main / sword nightfall passive damage blade main

# ===================================================


execute \
    as @e[type=block_display,tag=rotater] \
    on passengers run \
scoreboard players reset @s weapon.nightfall.charge

execute \
    as @e[type=block_display,tag=rotater] \
    on passengers run \
kill @s
scoreboard players reset @e[type=block_display,tag=rotater] weapon.nightfall.charge
kill @e[type=block_display,tag=rotater]
kill @s