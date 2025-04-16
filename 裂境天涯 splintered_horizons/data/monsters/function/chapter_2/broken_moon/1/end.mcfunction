# 解除鎖定
attribute @s movement_speed modifier remove monsters.broken_moon.1
attribute @s jump_strength modifier remove monsters.broken_moon.1
attribute @s gravity modifier remove monsters.broken_moon.1

tag @s remove chapter_2.broken_moon.1

scoreboard players operation @s monster.broken_moon.skill.1.cd = max monster.broken_moon.skill.1.cd
scoreboard players reset @s monster.broken_moon.skill.1.casting