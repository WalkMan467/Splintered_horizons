## ---Opening 1--- ##

    scoreboard players add #story.opening.1 global.main 0
    scoreboard players add #story.opening.1_temp global.main 0

    # Detect
    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 329 \
        store result score #story.opening.1 global.main \
    if entity @a[distance=..10,gamemode=!spectator]

    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 329 \
        if entity @p[distance=..12,predicate=players:detect/movement] \
        as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] at @s \
        facing entity @p[distance=..10] eyes \
        rotated ~ 0 run \
    function animated_java:sophia/move

    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 329 \
        unless score story.opening.1 story.chapter_1 matches 2.. run \
    scoreboard players set @a[distance=..5,gamemode=!spectator] player.actionbar.npc_interaction.tips 5

    # If true;
    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 329 \
        if score #story.opening.1 global.main matches 1 \
        if score #story.opening.1_temp global.main matches 0 run \
    function story:opening/1/true

    # Else;
    execute \
        in world_area:main/game_lobby \
        positioned 1574 60 329 \
        if score #story.opening.1 global.main matches 0 \
        if score #story.opening.1_temp global.main matches 1 run \
    function story:opening/1/false