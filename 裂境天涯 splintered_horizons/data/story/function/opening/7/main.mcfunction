## --- Interaction --- ##

    scoreboard players add #story.opening.7 global.main 0
    scoreboard players add #story.opening.7_temp global.main 0

    # Detect
    execute \
    in world_area:main/game_lobby \
    positioned 16683.00 60.00 236.50 \
    store result score #story.opening.7 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    # If true;
    execute \
    in world_area:main/game_lobby \
    positioned 16683.00 60.00 236.50 \
        if score #story.opening.7 global.main matches 1 \
    if score #story.opening.7_temp global.main matches 0 run \
    function story:opening/7/true

    # Else;
    execute \
    in world_area:main/game_lobby \
    positioned 16683.00 60.00 236.50 \
        if score #story.opening.7 global.main matches 0 \
    if score #story.opening.7_temp global.main matches 1 run \
    function story:opening/7/false