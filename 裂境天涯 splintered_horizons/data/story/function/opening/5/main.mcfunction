## --- Interaction --- ##

    scoreboard players add #story.opening.5 global.main 0
    scoreboard players add #story.opening.5_temp global.main 0

    # Detect
    execute \
    positioned 1577 60 130 \
    store result score #story.opening.5 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    execute \
        in world_area:main/game_lobby \
        positioned 1577 60 130 \
        if entity @p[distance=..12,predicate=players:detect/movement] \
        as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] at @s \
        facing entity @p[distance=..16] eyes \
        rotated ~ 0 run \
    function aj:sophia/move

    execute \
        in world_area:main/game_lobby \
        positioned 1577 60 130 \
        unless score story.opening.5 story.chapter_1 matches 2.. run \
    scoreboard players set @a[distance=..5,gamemode=!spectator] player.actionbar.npc_interaction.tips 5

    # If true;
    execute \
    positioned 1577 60 130 \
        if score #story.opening.5 global.main matches 1 \
    if score #story.opening.5_temp global.main matches 0 run \
    function story:opening/5/true

    # Else;
    execute \
    positioned 1577 60 130 \
        if score #story.opening.5 global.main matches 0 \
    if score #story.opening.5_temp global.main matches 1 run \
    function story:opening/5/false