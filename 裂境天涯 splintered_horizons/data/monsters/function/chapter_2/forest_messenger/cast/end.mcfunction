
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.forest_messenger.1

# Rdm Skill CS


execute \
    store result score @s monster.skill.cast.cd run \
random value 160..260