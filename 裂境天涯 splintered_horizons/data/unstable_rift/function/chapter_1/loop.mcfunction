# Guide

    ## Redirected to [ function unstable_rift:main/loop ]

#==================================================

    tag @a add temp
    tag @a[gamemode=spectator,tag=!animation] remove temp
    tag @a[tag=sys.hide_world_area.name] remove temp

# Chapter 1

    # Broken City

    execute \
        if entity @s[tag=temp] \
        if biome ~ ~ ~ unstable_rift:chapter_1/1 run \
    advancement grant @s only unstable_rift:chapter_1/1/in

    execute \
        unless biome ~ ~ ~ unstable_rift:chapter_1/1 run \
    advancement grant @s only unstable_rift:chapter_1/1/out

    tag @a remove temp

    function unstable_rift:chapter_1/1/timer/use