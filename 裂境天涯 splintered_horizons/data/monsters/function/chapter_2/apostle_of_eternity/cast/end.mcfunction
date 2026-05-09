
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_2.apostle_of_eternity.1

# Rdm Skill CD

data modify entity @s NoAI set value 0b

execute \
    store result score @s monster.skill.cast.cd run \
random value 160..260