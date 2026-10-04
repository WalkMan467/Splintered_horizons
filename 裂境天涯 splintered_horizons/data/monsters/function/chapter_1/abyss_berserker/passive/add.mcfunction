# ===================================================
# 深淵狂暴者 被動 累加層數 / abyss berserker passive stack up

    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/add ] >>> 深淵狂暴者 被動 累加層數 / abyss berserker passive stack up
    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/use ] >>> 深淵狂暴者 被動 受擊判定 / abyss berserker passive on hit

# ===================================================

scoreboard players add @s monster.abyss_berserker.passive.hit 1
scoreboard players set @s monster.abyss_berserker.passive.timer 100

playsound minecraft:item.shield.block voice @a ~ ~1 ~ 0.5 1