
execute on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
scoreboard players set @s duration 600

execute on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
tag @s remove summon


execute store result score @s monster.skill.cast.cd run \
random value 60..100
tag @s remove monsters.spawn