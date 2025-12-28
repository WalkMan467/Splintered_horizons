
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
    store result score @s monster.skill.cast.cd run \
random value 160..260