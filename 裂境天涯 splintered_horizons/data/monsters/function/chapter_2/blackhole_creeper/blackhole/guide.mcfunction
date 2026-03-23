execute \
    as @n[sort=arbitrary,distance=0..,tag=summon,tag=monster.blackhole_creeper.blackhole.display,type=item_display] at @s run \
function monsters:chapter_2/blackhole_creeper/blackhole/transformation

execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monster.blackhole_creeper.blackhole.display,type=item_display] at @s run \
    return run \
function monsters:chapter_2/blackhole_creeper/blackhole/guide