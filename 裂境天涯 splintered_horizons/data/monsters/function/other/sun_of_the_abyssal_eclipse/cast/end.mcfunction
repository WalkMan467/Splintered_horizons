
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove other.sun_of_the_abyssal_eclipse.1

data modify entity @s NoAI set value 0b

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.cd run \
random value 160..260