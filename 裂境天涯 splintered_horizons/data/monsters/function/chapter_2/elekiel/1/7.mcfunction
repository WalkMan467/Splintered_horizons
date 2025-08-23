execute positioned 912 60 3018 as @e[type=#dummy_mob,tag=aj.global.camera,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run tp @s ~ ~ ~-1000
execute positioned 912 60 3018 as @e[type=item_display,tag=aj.global.root,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run tp @s ~ ~ ~-1000
execute positioned 912 60 3018 as @e[type=area_effect_cloud,tag=monster.elekiel.3.player_pos.save,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run tp @s ~ ~ ~-1000
execute positioned 912 60 3018 as 00000015-0000-0002-0000-003700000080 at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run tp @s ~ ~ ~-1000



execute positioned 912 60 3018 as @e[tag=monsters.chapter_2.elekiel.1.tree.monsters,type=!#minecraft:dummy_mob,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run function monsters:chapter_2/elekiel/1/void
execute positioned 912 60 3018 as @e[tag=monsters.soul_tree_remnant,type=!#minecraft:dummy_mob,distance=..60] at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run function monsters:chapter_2/elekiel/1/void

execute as @a at @s if biome ~ ~ ~ #world_area:chapter_2_bossfight run advancement grant @s only monsters:chapter_2/elekiel/1/battlefield/normal

execute if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run tp @s 912 60 2018

data modify entity @s NoAI set value 0b