# ===================================================
# 弓 終焉凝視者 右鍵 第二段完成 / bow the endwatcher right click stage 2

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/stage2 ] >>> 弓 終焉凝視者 右鍵 第二段完成 / bow the endwatcher right click stage 2
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/use ] >>> 弓 終焉凝視者 右鍵 蓄力 / bow the endwatcher right click charge
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/fire ] >>> 弓 終焉凝視者 右鍵 放箭 / bow the endwatcher right click fire

# ===================================================

# 執行者 : 拉弓的玩家

scoreboard players set @s weapon.the_endwatcher.stage 2

# 開眼中順便把剩餘次數顯示 2 秒，不然不知道還能放幾發

execute \
    if score @s weapon.the_endwatcher.awaken matches 1.. run \
scoreboard players set @s player.actionbar.weapon.the_endwatcher 40

title @s times 0 10 5
title @s title ""

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
particle dust{color:[0.808,0.000,0.000],scale:1.5} ~ ~1 ~ 0.6 0.8 0.6 0 25 normal @a

playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.6
playsound minecraft:block.respawn_anchor.charge voice @s ~ ~1 ~ 0.8 1.4
