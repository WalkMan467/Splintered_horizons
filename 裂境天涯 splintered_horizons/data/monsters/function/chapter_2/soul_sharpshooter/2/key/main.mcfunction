
execute \
    as @a at @s \
    as @e[distance=..60,tag=chapter_2.soul_sharpshooter.key,type=item_display] at @s run \
function monsters:chapter_2/soul_sharpshooter/2/key/guide

execute \
    as @a at @s \
    if entity @n[sort=arbitrary,distance=0..,tag=chapter_2.soul_sharpshooter.key,type=item_display] run \
schedule function monsters:chapter_2/soul_sharpshooter/2/key/main 1t