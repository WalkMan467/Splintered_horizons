# 直接重置魔力值
# @s = BOSS

scoreboard players set @s monster.broken_moon.passive 10

scoreboard players operation @s monster.broken_moon.skill.1.cd = max monster.broken_moon.skill.1.cd
scoreboard players reset @s monster.broken_moon.skill.1.casting

bossbar set minecraft:monster.boss.broken_moon.passive name {"translate": "monsters.broken_moon.mana"}
bossbar set minecraft:monster.boss.broken_moon.passive color blue

tag @s remove monster.broken_moon.passive.cding