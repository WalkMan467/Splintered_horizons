# ===================================================
# 弓 終焉凝視者 右鍵 第一段完成 / bow the endwatcher right click stage 1

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/stage1 ] >>> 弓 終焉凝視者 右鍵 第一段完成 / bow the endwatcher right click stage 1
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/use ] >>> 弓 終焉凝視者 右鍵 蓄力 / bow the endwatcher right click charge

# ===================================================

# 執行者 : 拉弓的玩家

scoreboard players set @s weapon.the_endwatcher.stage 1

playsound minecraft:entity.experience_orb.pickup voice @s ~ ~1 ~ 1 0.5
particle minecraft:trial_spawner_detection ~ ~1 ~ 0.5 1 0.5 0 30 normal @a
