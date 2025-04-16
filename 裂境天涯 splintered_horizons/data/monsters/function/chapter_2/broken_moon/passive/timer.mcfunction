# 能量耗盡補能量 (1s)

execute if score @s monster.broken_moon.passive.cd matches 18 run scoreboard players set @s monster.broken_moon.passive 1
execute if score @s monster.broken_moon.passive.cd matches 16 run scoreboard players set @s monster.broken_moon.passive 2
execute if score @s monster.broken_moon.passive.cd matches 14 run scoreboard players set @s monster.broken_moon.passive 3
execute if score @s monster.broken_moon.passive.cd matches 12 run scoreboard players set @s monster.broken_moon.passive 4
execute if score @s monster.broken_moon.passive.cd matches 10 run scoreboard players set @s monster.broken_moon.passive 5
execute if score @s monster.broken_moon.passive.cd matches 8 run scoreboard players set @s monster.broken_moon.passive 6
execute if score @s monster.broken_moon.passive.cd matches 6 run scoreboard players set @s monster.broken_moon.passive 7
execute if score @s monster.broken_moon.passive.cd matches 4 run scoreboard players set @s monster.broken_moon.passive 8
execute if score @s monster.broken_moon.passive.cd matches 2 run scoreboard players set @s monster.broken_moon.passive 9
execute if score @s monster.broken_moon.passive.cd matches 0 if score @s monster.broken_moon.passive matches 9 run function monsters:chapter_2/broken_moon/reset_mana