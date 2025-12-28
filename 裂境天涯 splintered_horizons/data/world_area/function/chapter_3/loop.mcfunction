# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

# Chapter 3

    # Main 
    execute \
    if score #weapons:monument/area_2 global.main matches 1.. \
    if biome ~ ~ ~ #world_area:chapter_3 run \
advancement grant @s only music:chapter_3/icon
    execute \
    unless score #weapons:monument/area_2 global.main matches 1.. \
    if biome ~ ~ ~ #world_area:chapter_3 run \
function world_area:chapter_3/death_area

    # Finalitys Embrace Rift
    
    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run \
advancement grant @s only world_area:chapter_3/finalitys_embrace_rift/in
    execute \
    unless biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run \
advancement grant @s only world_area:chapter_3/finalitys_embrace_rift/out

    # Realm of Finality
    
    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:chapter_3/realm_of_finality run \
advancement grant @s only world_area:chapter_3/realm_of_finality/in
    execute \
    unless biome ~ ~ ~ world_area:chapter_3/realm_of_finality run \
advancement grant @s only world_area:chapter_3/realm_of_finality/out