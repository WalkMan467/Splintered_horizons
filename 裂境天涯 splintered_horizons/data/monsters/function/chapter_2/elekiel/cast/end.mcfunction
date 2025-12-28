
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.elekiel.1
tag @s remove chapter_2.elekiel.2
tag @a remove monsters.elekiel.2.vampire_flower.target

# Rdm Skill CS


execute store result score @s monster.skill.cast.cd run \
random value 150..250

execute store result score @s monster.skill.rdm.skill run \
random value 1..2