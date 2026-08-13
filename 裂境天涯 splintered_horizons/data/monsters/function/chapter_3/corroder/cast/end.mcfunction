
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove monsters.corroder.1

# Rdm Skill CS

execute \
    store result score @s monster.skill.cast.at run \
random value 180..250
scoreboard players operation @s monster.skill.cast.at += #now global.time
scoreboard players reset @s monster.skill.cast.tip