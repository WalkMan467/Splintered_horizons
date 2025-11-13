execute if entity @s[tag=campfire] run scoreboard players set @s music.main.campfire 1
execute if entity @s[tag=campfire] run return 0

execute if biome ~ ~ ~ #world_area:chapter_1 run scoreboard players set @s music.chapter1.broken_city 1
execute if biome ~ ~ ~ world_area:chapter_2/land_of_finality run scoreboard players set @s music.chapter2.land_of_finality 1
execute if biome ~ ~ ~ world_area:main/safe_zone run scoreboard players set @s music.main.safe_zone 1
execute if biome ~ ~ ~ world_area:chapter_2/forest_of_souls run scoreboard players set @s music.chapter2.forest_of_souls 1
execute if biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run scoreboard players set @s music.chapter2.forgotten_sakura_city 1
execute if biome ~ ~ ~ world_area:other/the_forgooten_lost_city run scoreboard players set @s music.other.the_forgooten_lost_city 1
execute if biome ~ ~ ~ #world_area:chapter_2_end run scoreboard players set @s music.chapter2.temple_of_light 1
execute if biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run scoreboard players set @s music.chapter3.finalitys_embrace_rift 1
execute if biome ~ ~ ~ world_area:chapter_3/realm_of_finality run scoreboard players set @s music.chapter3.realm_of_finality 1
execute if entity @n[distance=..20,type=zombie,tag=monsters.lord_of_the_cataclysm] run scoreboard players set @s music.chapter3.lord_of_the_cataclysm 1
execute at 00000100-0000-0080-0000-008000000005 if entity @s[distance=..60] run scoreboard players set @s music.chapter2.bossfight.3 1

execute unless biome ~ ~ ~ world_area:chapter_2/land_of_finality run scoreboard players set @s music.chapter2.land_of_finality 0
execute unless biome ~ ~ ~ #world_area:chapter_1 run scoreboard players set @s music.chapter1.broken_city 0
execute unless biome ~ ~ ~ world_area:main/safe_zone run scoreboard players set @s music.main.safe_zone 0
execute unless biome ~ ~ ~ world_area:chapter_2/forest_of_souls run scoreboard players set @s music.chapter2.forest_of_souls 0
execute unless biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run scoreboard players set @s music.chapter2.forgotten_sakura_city 0
execute unless biome ~ ~ ~ world_area:other/the_forgooten_lost_city run scoreboard players set @s music.other.the_forgooten_lost_city 0
execute unless biome ~ ~ ~ #world_area:chapter_2_end run scoreboard players set @s music.chapter2.temple_of_light 0
execute unless biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run scoreboard players set @s music.chapter3.finalitys_embrace_rift 0
execute unless biome ~ ~ ~ world_area:chapter_3/realm_of_finality run scoreboard players set @s music.chapter3.realm_of_finality 0
execute unless entity @n[distance=..20,type=zombie,tag=monsters.lord_of_the_cataclysm] run scoreboard players set @s music.chapter3.lord_of_the_cataclysm 0
execute at 00000100-0000-0080-0000-008000000005 unless entity @s[distance=..60] run scoreboard players set @s music.chapter2.bossfight.3 0