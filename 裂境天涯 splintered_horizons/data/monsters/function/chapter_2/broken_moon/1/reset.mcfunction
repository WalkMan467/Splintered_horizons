# 強制進入魔力 CD 冷卻
# @s = BOSS

effect give @s slow_falling 1 255 true

scoreboard players set @s monster.broken_moon.1.count 0
scoreboard players set @s monster.broken_moon.passive 0
scoreboard players set @s monster.broken_moon.passive.cd 20

bossbar set minecraft:monster.boss.broken_moon.passive name {"translate": "monster.broken_moon.passive.cding"}
bossbar set minecraft:monster.boss.broken_moon.passive color yellow

attribute @s movement_speed modifier remove monsters.broken_moon.1
attribute @s jump_strength modifier remove monsters.broken_moon.1
attribute @s gravity modifier remove monsters.broken_moon.1

tag @s remove chapter_2.broken_moon.1
tag @s remove chapter_2.broken_moon.3
tag @a[distance=..60] remove monsters.broken_moon.1.target

tag @s add monster.broken_moon.passive.cding

scoreboard players reset @s monster.broken_moon.skill.1.cd
scoreboard players reset @s monster.broken_moon.skill.1.casting