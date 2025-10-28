# Guide

    # Chapter 1
    execute if entity @s[tag=!campfire] run function world_area:chapter_1/loop

    # Chapter 2
    execute if entity @s[tag=!campfire] run function world_area:chapter_2/loop

    # Chapter 3
    execute if entity @s[tag=!campfire] run function world_area:chapter_3/loop

    # 其他
    execute if entity @s[tag=!campfire] run function world_area:other/loop

#==================================================

function world_area:main/safe_zone/amysis/main
function world_area:main/safe_zone/elina/main
function world_area:main/safe_zone/selena/main
function world_area:main/safe_zone/melisna/main

# Global

    # Campfire
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6,type=minecraft:interaction] unless entity @n[distance=..6,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!system.campfire] run advancement grant @s only world_area:main/campfire/in
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6,type=minecraft:interaction] if entity @n[distance=..6,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!system.campfire] run advancement grant @s only world_area:main/campfire/out
    execute unless entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/out

    # Campfire Darkness Effect
    effect give @s[tag=campfire] darkness 2 255 true

    # Safe Zone
    execute if biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/in
    execute unless biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/out

    # Tree of World Memory
    execute if biome ~ ~ ~ world_area:main/tree_of_world_memory run advancement grant @s only world_area:main/tree_of_world_memory/in
    execute unless biome ~ ~ ~ world_area:main/tree_of_world_memory run advancement grant @s only world_area:main/tree_of_world_memory/out

    # Adventure / Survival mode area detection (including campfires)
    execute if entity @s[gamemode=survival] if function world_area:main/mode_change/main run function world_area:main/mode_change/adventure
    execute if entity @s[gamemode=adventure] unless function world_area:main/mode_change/main run function world_area:main/mode_change/survival

    # Border Wall
    execute if biome ~ ~ ~ world_area:main/boundary if predicate players:detect/not_creative_spectator run function world_area:main/boundary/in

    # Death Zone
    execute if biome ~ ~ ~ world_area:main/death_area if predicate players:detect/not_creative_spectator run kill @s