playsound minecraft:entity.creaking.death voice @a ~ ~1 ~ 1 0.75
particle minecraft:sculk_soul ~ ~1 ~ 1 0.5 1 0 20 force @a
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.5 20 force @a
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force @a

kill @n[sort=arbitrary,distance=..1.5,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud]

kill @s

execute \
    if score #bossfight.segrina.skills.3 monster.segrina.cd matches 3.. run \
return 0

scoreboard players add #bossfight.segrina.skills.3 monster.segrina.cd 1

function bossfight:chapter_2/segrina/skills/interface/in

tag @a[sort=arbitrary,distance=..120,gamemode=!creative,tag=!eliminate,tag=monster.segrina.bossfight.interface] add forced_interrupt_animation

execute \
    as @a[sort=arbitrary,distance=..120,gamemode=!creative,tag=!eliminate,tag=monster.segrina.bossfight.interface] at @s run \
function players:stop_animation

execute \
    as @a[sort=arbitrary,distance=..120,gamemode=!creative,tag=!eliminate,tag=monster.segrina.bossfight.interface] at @s run \
damage @s 4 bossfight:chapter_2/segrina/skills/3/damage by @n[sort=arbitrary,distance=..120,tag=monsters.segrina,type=zombie]

function bossfight:chapter_2/segrina/skills/interface/out


execute \
    if score #bossfight.segrina.skills.3 monster.segrina.cd matches 1 \
    as @a run \
    return run \
attribute @s minecraft:max_health modifier add bossfight.segrina.skills.3.1 -4 add_value

execute \
    if score #bossfight.segrina.skills.3 monster.segrina.cd matches 2 \
    as @a run \
    return run \
attribute @s minecraft:max_health modifier add bossfight.segrina.skills.3.2 -4 add_value

execute \
    if score #bossfight.segrina.skills.3 monster.segrina.cd matches 3 \
    as @a run \
    return run \
attribute @s minecraft:max_health modifier add bossfight.segrina.skills.3.3 -4 add_value