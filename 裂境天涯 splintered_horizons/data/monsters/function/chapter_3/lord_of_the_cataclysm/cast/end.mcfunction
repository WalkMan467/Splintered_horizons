
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.lord_of_the_cataclysm.1
tag @s remove chapter_3.lord_of_the_cataclysm.2
tag @s remove chapter_3.lord_of_the_cataclysm.3

# Rdm Skill CD


execute \
    store result score @s monster.skill.rdm.skill run \
random value 1..2

execute \
    store result score @s monster.skill.cast.at run \
random value 150..250
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip