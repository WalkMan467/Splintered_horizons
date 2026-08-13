
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove other.sun_of_the_abyssal_eclipse.1

data modify entity @s NoAI set value 0b

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 160..260
scoreboard players operation @s monster.skill.cast.at += #now global.time
scoreboard players reset @s monster.skill.cast.tip