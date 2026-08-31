# ===================================================
# 深淵狂暴者 被動 破防 / abyss berserker passive broken

    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/broken ] >>> 深淵狂暴者 被動 破防 / abyss berserker passive broken
    ## Guide [ function monsters:chapter_1/abyss_berserker/passive/use ] >>> 深淵狂暴者 被動 受擊判定 / abyss berserker passive on hit

# ===================================================

scoreboard players set @s monster.abyss_berserker.passive.cd 160
scoreboard players reset @s monster.abyss_berserker.passive.hit

playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 0.75

particle block{block_state:"blue_stained_glass"} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a