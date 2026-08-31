# ===================================================
# 追魂體 排程 / ghost key scheduler

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/main ] >>> 追魂體 排程 / ghost key scheduler
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/0 ] >>> 魂之神射手 技能2 生成追魂體 / soul sharpshooter skill 2 spawn ghost
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/guide ] >>> 追魂體 追蹤與判定 / ghost key track and check

# ===================================================

execute \
    as @a at @s \
    as @e[distance=..60,tag=chapter_2.soul_sharpshooter.key,type=item_display] at @s run \
function monsters:chapter_2/soul_sharpshooter/2/key/guide

execute \
    as @a at @s \
    if entity @n[sort=arbitrary,distance=0..,tag=chapter_2.soul_sharpshooter.key,type=item_display] run \
schedule function monsters:chapter_2/soul_sharpshooter/2/key/main 1t