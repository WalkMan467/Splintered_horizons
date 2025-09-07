
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.soul_tree_remnant.1

effect clear @s levitation
effect clear @s slow_falling


# Rdm Skill CS

execute store result score @s monster.skill.cast.cd run random value 150..250