execute if entity @n[tag=system.campfire.chapter_1.1,limit=1,distance=..4] run scoreboard players set @s music.main.campfire 1
execute if entity @n[tag=system.campfire.chapter_1.1,limit=1,distance=..4] run return fail

execute if biome ~ ~ ~ world_area:chapter_1/broken_city run scoreboard players set @s music.chapter1.broken_city 1