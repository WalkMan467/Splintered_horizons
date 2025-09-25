tp @s ^ ^ ^1

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a

execute positioned ~ ~-0.5 ~ if entity @n[type=!player,type=!#minecraft:dummy_mob,distance=..1.5] run function weapons:type/drop/broken_glass/kill
execute positioned ~ ~-0.5 ~ as @n[type=!player,type=!#minecraft:dummy_mob,distance=..1.5] run function weapons:type/drop/broken_glass/effect

execute unless block ~ ~ ~ #penetrate run function weapons:type/drop/broken_glass/kill