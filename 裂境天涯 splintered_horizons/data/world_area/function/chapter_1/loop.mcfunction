# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

# Chapter 1

    # Main
    execute \
    if biome ~ ~ ~ #world_area:chapter_1 run \
advancement grant @s only world_area:chapter_1/main/in
    execute \
    unless biome ~ ~ ~ #world_area:chapter_1 run \
advancement grant @s only world_area:chapter_1/main/out

    # Broken City

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:chapter_1/broken_city run \
advancement grant @s only world_area:chapter_1/broken_city/in
    execute \
    unless biome ~ ~ ~ world_area:chapter_1/broken_city run \
advancement grant @s only world_area:chapter_1/broken_city/out

    # Abyssal Ruins

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run \
advancement grant @s only world_area:chapter_1/abyssal_ruins/in
    execute \
    unless biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run \
advancement grant @s only world_area:chapter_1/abyssal_ruins/out

    # The Black Hole

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:chapter_1/the_black_hole run \
advancement grant @s only world_area:chapter_1/the_black_hole/in
    execute \
    unless biome ~ ~ ~ world_area:chapter_1/the_black_hole run \
advancement grant @s only world_area:chapter_1/the_black_hole/out