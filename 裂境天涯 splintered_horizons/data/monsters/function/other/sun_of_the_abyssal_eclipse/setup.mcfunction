
execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
scoreboard players set @s duration 600

execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer,tag=summon] run \
tag @s remove summon


execute \
    store result score @s monster.skill.cast.at run \
random value 60..100
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip
tag @s remove monsters.spawn