# Guide

    ## 導向到 [ function world_area:main/loop ]

#==================================================

# 第一章

    # 破碎之都

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/in
    execute unless biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/out

    # 深淵之墟

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run advancement grant @s only world_area:chapter_1/abyssal_ruins/in
    execute unless biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run advancement grant @s only world_area:chapter_1/abyssal_ruins/out

    # 深紅虛空之地

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_1/realm_of_the_black_hole run advancement grant @s only world_area:chapter_1/realm_of_the_black_hole/in
    execute unless biome ~ ~ ~ world_area:chapter_1/realm_of_the_black_hole run advancement grant @s only world_area:chapter_1/realm_of_the_black_hole/out