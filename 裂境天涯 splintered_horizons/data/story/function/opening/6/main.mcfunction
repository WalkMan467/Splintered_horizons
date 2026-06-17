## --- Interaction --- ##

    scoreboard players add #story.opening.6 global.main 0
    scoreboard players add #story.opening.6_temp global.main 0

    # Detect
    execute \
    in world_area:main/game_lobby \
    positioned 1575 77 8 \
    store result score #story.opening.6 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    # If true;
    execute \
    in world_area:main/game_lobby \
    positioned 1575 77 8 \
        if score #story.opening.6 global.main matches 1 \
    if score #story.opening.6_temp global.main matches 0 run \
    function story:opening/6/true

    # Else;
    execute \
    in world_area:main/game_lobby \
    positioned 1575 77 8 \
        if score #story.opening.6 global.main matches 0 \
    if score #story.opening.6_temp global.main matches 1 run \
    function story:opening/6/false