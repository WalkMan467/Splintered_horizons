# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

# Chapter 2

    # Main 
    execute if biome ~ ~ ~ #world_area:chapter_2 run advancement grant @s only music:chapter_2/icon


    # Land of Finality
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/land_of_finality run advancement grant @s only world_area:chapter_2/land_of_finality/in
    execute unless biome ~ ~ ~ world_area:chapter_2/land_of_finality run advancement grant @s only world_area:chapter_2/land_of_finality/out

    # Forest of Souls
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/forest_of_souls run advancement grant @s only world_area:chapter_2/forest_of_souls/in
    execute unless biome ~ ~ ~ world_area:chapter_2/forest_of_souls run advancement grant @s only world_area:chapter_2/forest_of_souls/out

    # Forgotten Sakura City
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run advancement grant @s only world_area:chapter_2/forgotten_sakura_city/in
    execute unless biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run advancement grant @s only world_area:chapter_2/forgotten_sakura_city/out

    # Deep Crimson Abyss
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/deep_crimson_abyss run advancement grant @s only world_area:chapter_2/deep_crimson_abyss/in
    execute unless biome ~ ~ ~ world_area:chapter_2/deep_crimson_abyss run advancement grant @s only world_area:chapter_2/deep_crimson_abyss/out

    # Magical Land
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/magical_land run advancement grant @s only world_area:chapter_2/magical_land/in
    execute unless biome ~ ~ ~ world_area:chapter_2/magical_land run advancement grant @s only world_area:chapter_2/magical_land/out

    # Temple of Light
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/temple_of_light run advancement grant @s only world_area:chapter_2/temple_of_light/in
    execute unless biome ~ ~ ~ world_area:chapter_2/temple_of_light run advancement grant @s only world_area:chapter_2/temple_of_light/out

    # Elekiel Bossfight
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run advancement grant @s only world_area:chapter_2/temple_of_light/bossfight/in
    execute unless biome ~ ~ ~ world_area:chapter_2/bossfight/normal run advancement grant @s only world_area:chapter_2/temple_of_light/bossfight/out

    # Elekiel Phase 2 Bossfight
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/bossfight/elekiel_phase_2/bossfight_area run advancement grant @s only world_area:chapter_2/temple_of_light/bossfight/elekiel_phase_2/bossfight_area/in
    execute unless biome ~ ~ ~ world_area:chapter_2/bossfight/elekiel_phase_2/bossfight_area run advancement grant @s only world_area:chapter_2/temple_of_light/bossfight/elekiel_phase_2/bossfight_area/out

    # Temple of Light
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ #world_area:chapter_2_end run advancement grant @s only world_area:chapter_2/main/in
    execute unless biome ~ ~ ~ #world_area:chapter_2_end run advancement grant @s only world_area:chapter_2/main/out


    # BOSS battle entrance detection
    
    execute positioned 1116 81 368 as @a[distance=..1.5] run function world_area:chapter_2/temple_of_light/bossfight/tp