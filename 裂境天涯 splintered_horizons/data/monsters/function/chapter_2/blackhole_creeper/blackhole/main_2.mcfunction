execute \
    as @a at @s \
    as @n[sort=random,distance=..30,tag=monster.blackhole_creeper.blackhole.display,type=item_display] at @s run \
function monsters:chapter_2/blackhole_creeper/blackhole/guide_2

execute if entity @n[sort=arbitrary,distance=0..,tag=monster.blackhole_creeper.blackhole.display,type=item_display] run \
schedule function monsters:chapter_2/blackhole_creeper/blackhole/main_2 1t