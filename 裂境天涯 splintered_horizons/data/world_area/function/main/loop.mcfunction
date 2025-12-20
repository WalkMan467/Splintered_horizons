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

function world_area:main/safe_zone/elina/main
function world_area:main/safe_zone/selena/main
function world_area:main/safe_zone/melisna/main

# Global

    # Campfire
    execute if entity @s[gamemode=!spectator] if entity @n[tag=sys.campfire,limit=1,distance=..6,type=minecraft:interaction] unless entity @n[distance=..12,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!sys.campfire] run advancement grant @s only world_area:main/campfire/in
    execute if entity @s[gamemode=!spectator] if entity @n[tag=sys.campfire,limit=1,distance=..6,type=minecraft:interaction] if entity @n[distance=..12,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!sys.campfire] run advancement grant @s only world_area:main/campfire/out
    execute unless entity @n[tag=sys.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/out

    # Campfire Darkness Effect
    effect give @s[tag=campfire.darkness,type=player] darkness 2 255 true

    # Safe Zone Music
    execute if biome ~ ~ ~ #world_area:safe_area run advancement grant @s only world_area:main/safe_zone/music/in
    execute unless biome ~ ~ ~ #world_area:safe_area run advancement grant @s only world_area:main/safe_zone/music/out

    # Safe Zone
    execute if biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/in
    execute unless biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/out

    # Safe Zone
    execute if biome ~ ~ ~ world_area:main/resource_warehouse run advancement grant @s only world_area:main/resource_warehouse/in
    execute unless biome ~ ~ ~ world_area:main/resource_warehouse run advancement grant @s only world_area:main/resource_warehouse/out

    # Adventure / Survival mode area detection (including campfires)
    execute if entity @s[gamemode=survival] if function world_area:main/mode_change/main run function world_area:main/mode_change/adventure
    execute if entity @s[gamemode=adventure] unless function world_area:main/mode_change/main run function world_area:main/mode_change/survival

    # Border Wall
    execute if biome ~ ~ ~ world_area:main/boundary if predicate players:detect/not_creative_spectator if entity @s[tag=!player.death] run function world_area:main/boundary/in

    # Death Zone
    execute if biome ~ ~ ~ world_area:main/death_area if predicate players:detect/not_creative_spectator if entity @s[tag=!player.death] run kill @s