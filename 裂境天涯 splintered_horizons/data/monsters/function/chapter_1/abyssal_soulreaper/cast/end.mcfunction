
## ----- Reset ----- ##
scoreboard players reset @s monster.skill.casting

# Tags
tag @s remove chapter_1.abyssal_soulreaper.1
tag @s remove chapter_1.abyssal_soulreaper.2

attribute @s minecraft:follow_range modifier remove monsters.abyssal_soulreaper.skill
attribute @s minecraft:attack_damage modifier remove monsters.abyssal_soulreaper.skill
attribute @s minecraft:movement_speed modifier remove monsters.abyssal_soulreaper.skill
attribute @s minecraft:jump_strength modifier remove monsters.abyssal_soulreaper.skill
attribute @s minecraft:gravity modifier remove monsters.abyssal_soulreaper.skill
attribute @s minecraft:safe_fall_distance modifier remove monsters.abyssal_soulreaper.skill

# Rdm Skill CD

execute store result score @s monster.skill.cast.cd run random value 60..120