# 施法中計時器
execute if score @s monster.broken_moon.skill.1.casting matches 0.. run scoreboard players add @s monster.broken_moon.skill.1.casting 1
execute if score @s monster.broken_moon.skill.3.casting matches 0.. run scoreboard players add @s monster.broken_moon.skill.3.casting 1
execute if score @s monster.broken_moon.skill.4.casting matches 0.. run scoreboard players add @s monster.broken_moon.skill.4.casting 1

# 1 技能
execute if score @s monster.broken_moon.skill.1.cd matches 0 run function monsters:chapter_2/broken_moon/1/use

# 3 技能
execute if score @s monster.broken_moon.skill.3.cd matches 0 run function monsters:chapter_2/broken_moon/3/use

# 4 技能
execute if score @s monster.broken_moon.skill.4.cd matches 0 run function monsters:chapter_2/broken_moon/4/use

# 顯示 bossbar
bossbar set minecraft:monster.boss.broken_moon players @a[distance=..60]