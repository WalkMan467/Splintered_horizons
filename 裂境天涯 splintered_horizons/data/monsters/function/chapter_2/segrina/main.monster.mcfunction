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
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] run \
rotate @s ~ 0
ride @n[distance=0..,tag=aj.segrina.root,type=item_display] mount @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie]

execute \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] at @s \
    facing 762 107 642 run \
tp @s ^ ^ ^1


scoreboard players set @a[distance=..60] player.disable.tp_book 10

function monsters:chapter_2/segrina/state/main