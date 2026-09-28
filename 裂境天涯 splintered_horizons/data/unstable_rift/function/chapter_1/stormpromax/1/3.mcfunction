# 執行者 : typhoon

# speed
tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ #system:transparent run tp @s ~ ~1 ~

# dmg
execute as @a[distance=..2.5] at @s run function monsters:stormpromax/1/3c
scoreboard players set @n[tag=stormpromax] atk 50
execute as @n[tag=stormpromax] at @s run function time_traveler:dmg_formula/monsters/calculate

# particle
scoreboard players operation #temp global.main = @s duration
scoreboard players operation #temp global.main %= 2 global.main

execute if score #temp global.main matches 0 rotated ~ 0 run function monsters:stormpromax/1/3b
execute if score #temp global.main matches 1 rotated ~45 0 run function monsters:stormpromax/1/3b