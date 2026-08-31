# ===================================================
# 黑洞 展開排程 / blackhole expand scheduler

    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/guide ] >>> 黑洞 展開排程 / blackhole expand scheduler
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/summon ] >>> 黑洞 生成 / blackhole summon
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/transformation ] >>> 黑洞 展開變形 / blackhole expand transform

# ===================================================

execute \
    as @n[sort=arbitrary,distance=0..,tag=summon,tag=monster.blackhole_creeper.blackhole.display,type=item_display] at @s run \
function monsters:chapter_2/blackhole_creeper/blackhole/transformation

execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monster.blackhole_creeper.blackhole.display,type=item_display] at @s run \
    return run \
function monsters:chapter_2/blackhole_creeper/blackhole/guide