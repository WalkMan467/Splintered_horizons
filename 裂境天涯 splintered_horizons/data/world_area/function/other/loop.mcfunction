# Guide

    ## 導向到 [ function world_area:main/loop ]

#==================================================

# 其他

function world_area:other/otherworld_portal/1/main
function world_area:other/otherworld_portal/2/main

#==================================================

    # 進入隱藏區域

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ #world_area:hidden_area run advancement grant @s only music:other/icon

    # 被遺忘的失落之城

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:other/the_forgooten_lost_city run advancement grant @s only world_area:other/the_forgotten_lost_city/in
    execute unless biome ~ ~ ~ world_area:other/the_forgooten_lost_city run advancement grant @s only world_area:other/the_forgotten_lost_city/out

    # 深淵之森

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:other/abyss_forest run advancement grant @s only world_area:other/abyss_forest/in
    execute unless biome ~ ~ ~ world_area:other/abyss_forest run advancement grant @s only world_area:other/abyss_forest/out

    # 試煉之地

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ world_area:other/land_of_the_trials run advancement grant @s only world_area:other/land_of_the_trials/in
    execute unless biome ~ ~ ~ world_area:other/land_of_the_trials run advancement grant @s only world_area:other/land_of_the_trials/out