# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

    tag @a add temp
    tag @a[gamemode=spectator,tag=!animation] remove temp
    tag @a[tag=sys.hide_world_area.name] remove temp

# Chapter 1

    # Broken City

    execute \
        if entity @s[tag=temp] \
        if biome ~ ~ ~ world_area:chapter_1/broken_city run \
    advancement grant @s only world_area:chapter_1/broken_city/in

    execute \
        unless biome ~ ~ ~ world_area:chapter_1/broken_city run \
    advancement grant @s only world_area:chapter_1/broken_city/out

    # Abyssal Ruins

    execute \
        if entity @s[tag=temp] \
        if biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run \
    advancement grant @s only world_area:chapter_1/abyssal_ruins/in

    execute \
        unless biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run \
    advancement grant @s only world_area:chapter_1/abyssal_ruins/out

    # The Black Hole

    execute \
        if entity @s[tag=temp] \
        if biome ~ ~ ~ world_area:chapter_1/the_black_hole run \
    advancement grant @s only world_area:chapter_1/the_black_hole/in

    execute \
        unless biome ~ ~ ~ world_area:chapter_1/the_black_hole run \
    advancement grant @s only world_area:chapter_1/the_black_hole/out

    tag @a remove temp