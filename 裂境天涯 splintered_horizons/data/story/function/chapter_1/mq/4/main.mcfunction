## ---Main Line 2--- ##

    scoreboard players add #story.chapter_1.mq.4_temp global.main 0

    # Detect
    execute \
        positioned 14 83 -337 \
        store result score #story.chapter_1.mq.4 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    execute \
        positioned 14 83 -337 \
        as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] at @s \
        facing entity @p[distance=..8] eyes run \
    rotate @s ~ 0

    # If true;
    execute \
        positioned 14 83 -337 \
        if score #story.chapter_1.mq.4 global.main matches 1 \
        if score #story.chapter_1.mq.4_temp global.main matches 0 run \
    function story:chapter_1/mq/4/true

    # Else;
    execute \
        positioned 14 83 -337 \
        if score #story.chapter_1.mq.4 global.main matches 0 \
        if score #story.chapter_1.mq.4_temp global.main matches 1 run \
    function story:chapter_1/mq/4/false