
# Cast
function bossfight:chapter_2/segrina/skills/cast/cast

# Bossbar

execute \
    store result score #hp.max bossfight.segrina.main run \
attribute @s max_health get

execute \
    store result bossbar minecraft:monsters.segrina max run \
scoreboard players get #hp.max bossfight.segrina.main

execute \
    store result score #hp bossfight.segrina.main run \
data get entity @s Health

execute \
    store result bossbar minecraft:monsters.segrina value run \
scoreboard players get #hp bossfight.segrina.main

scoreboard players set #math global.main 2
scoreboard players operation #skill.4 bossfight.segrina.main = #hp.max bossfight.segrina.main
scoreboard players operation #skill.4 bossfight.segrina.main /= #math global.main

execute \
    if score #hp bossfight.segrina.main <= #skill.4 bossfight.segrina.main \
    if score #skill.4.enabled bossfight.segrina.main matches 1.. run \
function bossfight:chapter_2/segrina/skills/4/use

function bossfight:chapter_2/segrina/skills/interface/in

bossbar set minecraft:monsters.segrina visible true
bossbar set minecraft:monsters.segrina players @a[tag=monster.segrina.bossfight.interface,distance=..120]

function bossfight:chapter_2/segrina/skills/interface/out
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

function bossfight:chapter_2/segrina/skills/state/main