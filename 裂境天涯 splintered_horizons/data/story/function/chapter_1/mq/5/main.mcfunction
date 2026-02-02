## --- Interaction --- ##

    scoreboard players add #story.chapter_1.opening.5_temp global.main 0

    # Detect
    execute \
    positioned 18 30 -428 \
    store result score #story.chapter_1.opening.5 global.main \
    if entity @a[distance=..6,gamemode=!spectator]

    # If true;
    execute \
    positioned 18 30 -428 \
        if score #story.chapter_1.opening.5 global.main matches 1 \
    if score #story.chapter_1.opening.5_temp global.main matches 0 run \
    function story:chapter_1/mq/5/true

    # Else;
    execute \
    positioned 18 30 -428 \
        if score #story.chapter_1.opening.5 global.main matches 0 \
    if score #story.chapter_1.opening.5_temp global.main matches 1 run \
    function story:chapter_1/mq/5/false