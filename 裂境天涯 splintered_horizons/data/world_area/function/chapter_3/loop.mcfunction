# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

# Chapter 3

    # Main 
    execute if biome ~ ~ ~ #world_area:chapter_3 run advancement grant @s only music:chapter_3/icon


    # Finalitys Embrace Rift
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run advancement grant @s only world_area:chapter_3/finalitys_embrace_rift/in
    execute unless biome ~ ~ ~ world_area:chapter_3/finalitys_embrace_rift run advancement grant @s only world_area:chapter_3/finalitys_embrace_rift/out

    # Realm of Finality
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_3/realm_of_finality run advancement grant @s only world_area:chapter_3/realm_of_finality/in
    execute unless biome ~ ~ ~ world_area:chapter_3/realm_of_finality run advancement grant @s only world_area:chapter_3/realm_of_finality/out