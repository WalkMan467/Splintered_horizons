
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.forest_messenger.1

# Rdm Skill CS


execute \
    store result score @s monster.skill.cast.at run \
random value 160..260
scoreboard players operation @s monster.skill.cast.at += #now global.time
scoreboard players reset @s monster.skill.cast.tip