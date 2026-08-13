
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.explosion_arrow_skeleton.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #now global.time
scoreboard players reset @s monster.skill.cast.tip