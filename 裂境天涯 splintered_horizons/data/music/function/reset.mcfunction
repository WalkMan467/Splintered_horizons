execute if entity @s[tag=campfire] run scoreboard players set @s music.main.campfire 1
execute if entity @s[tag=campfire] run return 0

execute if biome ~ ~ ~ world_area:chapter_1/broken_city run scoreboard players set @s music.chapter1.broken_city 1
execute if biome ~ ~ ~ world_area:chapter_2/land_of_finality run scoreboard players set @s music.chapter2.land_of_finality 1
execute if biome ~ ~ ~ world_area:main/safe_zone run scoreboard players set @s music.main.safe_zone 1
execute if biome ~ ~ ~ world_area:chapter_2/forest_of_souls run scoreboard players set @s music.chapter2.forest_of_souls 1
execute if biome ~ ~ ~ world_area:other/the_forgooten_lost_city run scoreboard players set @s music.other.the_forgooten_lost_city 1

execute unless biome ~ ~ ~ world_area:chapter_2/land_of_finality run scoreboard players set @s music.chapter2.land_of_finality 0
execute unless biome ~ ~ ~ world_area:chapter_1/broken_city run scoreboard players set @s music.chapter1.broken_city 0
execute unless biome ~ ~ ~ world_area:main/safe_zone run scoreboard players set @s music.main.safe_zone 0
execute unless biome ~ ~ ~ world_area:chapter_2/forest_of_souls run scoreboard players set @s music.chapter2.forest_of_souls 0
execute unless biome ~ ~ ~ world_area:other/the_forgooten_lost_city run scoreboard players set @s music.other.the_forgooten_lost_city 0