# Guide

    ## 導向到 [ function world_area:main/loop ]

#==================================================

# 第一章

    function world_area:chapter_1/realm_of_the_black_hole/objects/main
    function world_area:chapter_1/realm_of_the_black_hole/objects/fx/main

    # Main
    execute if biome ~ ~ ~ #world_area:chapter_1 run advancement grant @s only world_area:chapter_1/main/in
    execute unless biome ~ ~ ~ #world_area:chapter_1 run advancement grant @s only world_area:chapter_1/main/out

    # 破碎之都

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/in
    execute unless biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/out

    # 深淵之墟

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run advancement grant @s only world_area:chapter_1/abyssal_ruins/in
    execute unless biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run advancement grant @s only world_area:chapter_1/abyssal_ruins/out

    # 黑洞之境

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/realm_of_the_black_hole run advancement grant @s only world_area:chapter_1/realm_of_the_black_hole/in
    execute unless biome ~ ~ ~ world_area:chapter_1/realm_of_the_black_hole run advancement grant @s only world_area:chapter_1/realm_of_the_black_hole/out

    # 黑洞中心

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/the_black_hole run advancement grant @s only world_area:chapter_1/the_black_hole/in
    execute unless biome ~ ~ ~ world_area:chapter_1/the_black_hole run advancement grant @s only world_area:chapter_1/the_black_hole/out