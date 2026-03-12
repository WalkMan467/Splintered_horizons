advancement revoke @s only monsters:chapter_2/segrina/4/kill

execute \
    unless score @s monster.segrina.skill.4.effect matches 1.. run \
return 0

scoreboard players remove @s monster.segrina.skill.4.effect 1
effect give @s instant_health 1 0 true

playsound minecraft:entity.witch.drink voice @a ~ ~1 ~ 1 1
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 4
scoreboard players set @s monster.segrina.skill.4.invincible 100
effect give @s glowing 5 255 true
attribute @s max_health base reset

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