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

# 抓 bossbar 條
execute store result bossbar minecraft:monster.boss.broken_moon value run data get entity @s Health
execute store result bossbar minecraft:monster.boss.broken_moon.passive value run scoreboard players get @s monster.broken_moon.passive

# 顯示 bossbar
bossbar set minecraft:monster.boss.broken_moon players @a[distance=..60]
bossbar set minecraft:monster.boss.broken_moon.passive players @a[distance=..60]

# 偵測是否沒有玩家在 60 格範圍內
execute unless entity @a[distance=..60,gamemode=spectator,tag=animation] unless entity @a[distance=..60,gamemode=!spectator,tag=!animation] run function monsters:chapter_2/broken_moon/void