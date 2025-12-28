## --- Interaction --- ##

    # Detect
    execute \
    positioned 38 64 9 \
    store result score #story.chapter_1.opening.1 global.main \
    if entity @a[distance=..6,gamemode=!spectator]

    # If true;
    execute \
    positioned 38 64 9 \
        if score #story.chapter_1.opening.1 global.main matches 1 \
    if score #story.chapter_1.opening.1_temp global.main matches 0 run \
    function story:chapter_1/mq/1/true

    # Else;
    execute \
    positioned 38 64 9 \
        if score #story.chapter_1.opening.1 global.main matches 0 \
    if score #story.chapter_1.opening.1_temp global.main matches 1 run \
    function story:chapter_1/mq/1/false