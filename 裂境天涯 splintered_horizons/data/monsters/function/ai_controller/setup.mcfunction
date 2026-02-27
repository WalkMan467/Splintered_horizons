execute \
    if entity @s[tag=monsters.ai_controller.setup] run \
return 0
execute \
    if entity @s[type=player] run \
return 0

tag @s add monsters.ai_controller.setup

execute \
    store result score @s monster.skill.ai_controller.cd run \
random value 60..160