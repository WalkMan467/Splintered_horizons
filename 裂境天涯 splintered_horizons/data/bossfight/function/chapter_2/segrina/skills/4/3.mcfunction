# 擊殺特殊怪物

advancement revoke @s only bossfight:chapter_2/segrina/skills/4/kill

effect give @s instant_health 1 0 true

playsound minecraft:entity.witch.drink voice @a ~ ~1 ~ 1 1
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 4
attribute @s max_health base reset

execute \
    if score @s monster.segrina.skill.4.effect matches 5 run \
attribute @s max_health modifier remove monster.segrina.skill.4.5

execute \
    if score @s monster.segrina.skill.4.effect matches 4 run \
attribute @s max_health modifier remove monster.segrina.skill.4.4

execute \
    if score @s monster.segrina.skill.4.effect matches 3 run \
attribute @s max_health modifier remove monster.segrina.skill.4.3

execute \
    if score @s monster.segrina.skill.4.effect matches 2 run \
attribute @s max_health modifier remove monster.segrina.skill.4.2

execute \
    if score @s monster.segrina.skill.4.effect matches 1 run \
attribute @s max_health modifier remove monster.segrina.skill.4.1

execute \
    if score @s monster.segrina.skill.4.effect matches 1.. run \
scoreboard players remove @s monster.segrina.skill.4.effect 1

function bossfight:chapter_2/segrina/skills/4/4