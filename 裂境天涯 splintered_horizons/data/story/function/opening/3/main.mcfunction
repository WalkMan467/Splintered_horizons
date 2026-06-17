## --- Interaction --- ##

    scoreboard players add #story.opening.3 global.main 0
    scoreboard players add #story.opening.3_temp global.main 0

    # Detect
    execute \
    positioned 1574 60 286 \
    store result score #story.opening.3 global.main \
    if entity @a[distance=..6,gamemode=!spectator]

    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 286 \
        unless score story.opening.3 story.chapter_1 matches 2.. run \
    scoreboard players set @a[distance=..5,gamemode=!spectator] player.actionbar.npc_interaction.tips 5

    # If true;
    execute \
    positioned 1574 60 286 \
        if score #story.opening.3 global.main matches 1 \
    if score #story.opening.3_temp global.main matches 0 run \
    function story:opening/3/true

    # Else;
    execute \
    positioned 1574 60 286 \
        if score #story.opening.3 global.main matches 0 \
    if score #story.opening.3_temp global.main matches 1 run \
    function story:opening/3/false