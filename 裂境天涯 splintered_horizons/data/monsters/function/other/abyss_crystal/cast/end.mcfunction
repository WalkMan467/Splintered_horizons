
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.abyss_crystal.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.cd run \
random value 160..260