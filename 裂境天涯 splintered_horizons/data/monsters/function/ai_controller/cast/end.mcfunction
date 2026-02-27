
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.ai_controller.casting
scoreboard players reset @s monster.skill.ai_controller.end

# Tags
tag @s remove monsters.ai_controller.actived

# Rdm Skill CD


execute \
    store result score @s monster.skill.ai_controller.cd run \
random value 60..160