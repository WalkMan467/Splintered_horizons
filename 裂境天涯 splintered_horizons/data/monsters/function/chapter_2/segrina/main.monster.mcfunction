# Cast
function monsters:chapter_2/segrina/cast/cast

# Bossbar

execute \
    store result bossbar minecraft:monsters.segrina max run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.segrina value run \
data get entity @s Health
bossbar set minecraft:monsters.segrina visible true
bossbar set minecraft:monsters.segrina players @a[distance=..60]

execute \
    on passengers at @s \
    if entity @s[type=item_display,tag=aj.segrina.root] rotated \
    as ffff8285-0000-0c33-0000-5a5c0162349d run \
rotate @s ~ 0
ride @n[distance=0..,tag=aj.segrina.root,type=item_display] mount ffff8285-0000-0c33-0000-5a5c0162349d


scoreboard players set @a[distance=..60] player.disable.tp_book 10