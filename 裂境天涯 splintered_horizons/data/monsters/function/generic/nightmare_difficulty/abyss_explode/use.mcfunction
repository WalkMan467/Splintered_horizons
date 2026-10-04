# ===================================================
# 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger

    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger
    ## Guide [ function monsters:chapter_1/abyss_berserker/kill ] >>> 深淵狂暴者 死亡處理 / abyss berserker on kill
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/kill ] >>> 深淵黑騎 死亡處理 / abyssal black knight on kill
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/kill ] >>> 深淵斷魂者 死亡處理 / abyssal soulreaper on kill
    ## Guide [ function monsters:chapter_1/corruptor/kill ] >>> 腐化者 死亡 凋零雲 / corruptor on kill wither cloud
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/kill ] >>> kill

# ===================================================

execute \
    if score @s sys.silence matches 1.. run \
return 0

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:11,Tags:["monster.nightmare_difficulty.abyss_explode.point"]}

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force @a