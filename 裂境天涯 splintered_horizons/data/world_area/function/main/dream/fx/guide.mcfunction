execute \
    unless entity @s[tag=summon] run \
return 0

execute unless score @s world_area.main.dream.fx.age matches 1.. run \
    return run \
scoreboard players add @s world_area.main.dream.fx.age 1

tp @s ^ ^ ^1

execute \
    store result entity @s Rotation[0] float 0.1 run \
random value 0..3600

execute \
    store result entity @s Rotation[1] float 0.1 run \
random value -300..300

tag @s remove summon
scoreboard players reset @s world_area.main.dream.fx.age