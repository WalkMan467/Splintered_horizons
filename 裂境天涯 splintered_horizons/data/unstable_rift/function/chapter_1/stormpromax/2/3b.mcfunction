# 執行者 : tnt | 十字爆炸


execute positioned ~1 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~2 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~3 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~4 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~5 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~6 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~7 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~8 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~9 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~10 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~11 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~12 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~13 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~14 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~15 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~16 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~17 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~18 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~19 ~ ~ run function monsters:stormpromax/2/3b2

execute positioned ~ ~ ~1 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~2 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~3 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~4 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~5 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~6 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~7 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~8 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~9 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~10 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~11 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~12 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~13 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~14 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~15 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~16 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~17 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~18 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~19 run function monsters:stormpromax/2/3b2

execute positioned ~-1 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-2 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-3 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-4 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-5 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-6 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-7 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-8 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-9 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-10 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-11 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-12 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-13 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-14 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-15 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-16 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-17 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-18 ~ ~ run function monsters:stormpromax/2/3b2
execute positioned ~-19 ~ ~ run function monsters:stormpromax/2/3b2

execute positioned ~ ~ ~-1 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-2 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-3 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-4 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-5 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-6 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-7 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-8 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-9 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-10 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-11 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-12 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-13 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-14 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-15 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-16 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-17 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-18 run function monsters:stormpromax/2/3b2
execute positioned ~ ~ ~-19 run function monsters:stormpromax/2/3b2

effect give @a[tag=dmger] slowness 5 2 true
effect give @a[tag=dmger] slow_falling 5 0 true

scoreboard players set @n[tag=stormpromax] atk 50
execute as @n[tag=stormpromax] at @s run function time_traveler:dmg_formula/monsters/calculate
tag @a remove dmger