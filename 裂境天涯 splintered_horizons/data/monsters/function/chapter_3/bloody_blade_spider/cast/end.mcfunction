
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_3.bloody_blade_spider.1

# Rdm Skill CD


execute \
    store result score @s monster.skill.cast.cd run \
random value 160..260