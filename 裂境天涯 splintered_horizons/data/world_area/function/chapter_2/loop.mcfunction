# Guide

    ## 導向到 [ function world_area:main/loop ]

#==================================================

# 第二章

    # Main 
    execute if biome ~ ~ ~ #world_area:chapter_2 run advancement grant @s only music:chapter_2/icon


    # 終焉之地
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/land_of_finality run advancement grant @s only world_area:chapter_2/land_of_finality/in
    execute unless biome ~ ~ ~ world_area:chapter_2/land_of_finality run advancement grant @s only world_area:chapter_2/land_of_finality/out

    # 靈魂之森
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/forest_of_souls run advancement grant @s only world_area:chapter_2/forest_of_souls/in
    execute unless biome ~ ~ ~ world_area:chapter_2/forest_of_souls run advancement grant @s only world_area:chapter_2/forest_of_souls/out

    # 黃昏裂界入口
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/dusks_fractured_maw run advancement grant @s only world_area:chapter_2/dusks_fractured_maw/in
    execute unless biome ~ ~ ~ world_area:chapter_2/dusks_fractured_maw run advancement grant @s only world_area:chapter_2/dusks_fractured_maw/out

    # 往昔的櫻花之城
    
    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run advancement grant @s only world_area:chapter_2/forgotten_sakura_city/in
    execute unless biome ~ ~ ~ world_area:chapter_2/forgotten_sakura_city run advancement grant @s only world_area:chapter_2/forgotten_sakura_city/out

    function world_area:chapter_2/dusks_fractured_maw/main