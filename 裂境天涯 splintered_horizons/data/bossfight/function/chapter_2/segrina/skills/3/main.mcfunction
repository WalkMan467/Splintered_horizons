scoreboard players add @s monster.segrina.skill.3.casting 1

execute \
    if score @s monster.segrina.skill.3.casting matches 1 run \
function bossfight:chapter_2/segrina/skills/3/0

execute \
    if score @s monster.segrina.skill.3.casting matches 40 run \
function bossfight:chapter_2/segrina/skills/3/2

execute \
    if score @s monster.segrina.skill.3.casting matches 40.. \
    as @e[sort=arbitrary,limit=3,distance=..120,tag=bossfight.segrina.skills.3.range,type=minecraft:area_effect_cloud] at @s run \
function bossfight:chapter_2/segrina/skills/3/range/main

execute \
    if score @s monster.segrina.skill.3.casting matches 40.. \
    as @e[sort=arbitrary,distance=..120,tag=bossfight.segrina.skills.3.soul,type=minecraft:block_display] at @s run \
function bossfight:chapter_2/segrina/skills/3/3

execute \
    if score @s monster.segrina.skill.3.casting matches 360.. run \
function bossfight:chapter_2/segrina/skills/3/end