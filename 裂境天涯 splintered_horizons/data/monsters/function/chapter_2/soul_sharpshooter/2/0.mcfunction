# ===================================================
# 魂之神射手 技能2 生成追魂體 / soul sharpshooter skill 2 spawn ghost

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/0 ] >>> 魂之神射手 技能2 生成追魂體 / soul sharpshooter skill 2 spawn ghost
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/main ] >>> 魂之神射手 技能2 分鏡 / soul sharpshooter skill 2 timeline
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/1 ] >>> 魂之神射手 技能2 追魂體設定 / soul sharpshooter skill 2 ghost setup
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/main ] >>> 追魂體 排程 / ghost key scheduler

# ===================================================

playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5

tag @s add chapter_2.soul_sharpshooter.key.temp

execute summon item_display rotated ~ 0 run \
function monsters:chapter_2/soul_sharpshooter/2/1
tag @s remove chapter_2.soul_sharpshooter.key.temp

schedule function monsters:chapter_2/soul_sharpshooter/2/key/main 1t