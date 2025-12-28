# Guide

    ## Redirected to [ function world_area:main/loop ]

#==================================================

# Others

function world_area:other/otherworld_portal/1/main
function world_area:other/otherworld_portal/2/main
function world_area:other/otherworld_portal/3/main
function world_area:other/otherworld_portal/4/main

#==================================================

    # Entering the hidden area

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ #world_area:hidden_area run \
advancement grant @s only music:other/icon

    # The Forgooten Lost City

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:other/the_forgooten_lost_city run \
advancement grant @s only world_area:other/the_forgotten_lost_city/in
    execute \
    unless biome ~ ~ ~ world_area:other/the_forgooten_lost_city run \
advancement grant @s only world_area:other/the_forgotten_lost_city/out

    # Nightfall Citadel: Hasanor

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:other/hasanor run \
advancement grant @s only world_area:other/hasanor/in
    execute \
    unless biome ~ ~ ~ world_area:other/hasanor run \
advancement grant @s only world_area:other/hasanor/out

    # Mini Game
    execute \
    if biome ~ ~ ~ world_area:other/mini_game run \
advancement grant @s only world_area:other/mini_game/in
    execute \
    unless biome ~ ~ ~ world_area:other/mini_game run \
advancement grant @s only world_area:other/mini_game/out

    # Abyss Forest

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:other/abyss_forest run \
advancement grant @s only world_area:other/abyss_forest/in
    execute \
    unless biome ~ ~ ~ world_area:other/abyss_forest run \
advancement grant @s only world_area:other/abyss_forest/out

    # Land of the Trials

    execute \
    if entity @s[gamemode=!spectator] \
    if biome ~ ~ ~ world_area:other/land_of_the_trials run \
advancement grant @s only world_area:other/land_of_the_trials/in
    execute \
    unless biome ~ ~ ~ world_area:other/land_of_the_trials run \
advancement grant @s only world_area:other/land_of_the_trials/out