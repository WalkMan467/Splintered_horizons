
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove monsters.corroder.1

# Rdm Skill CS

execute store result score @s monster.skill.cast.cd run \
random value 180..250