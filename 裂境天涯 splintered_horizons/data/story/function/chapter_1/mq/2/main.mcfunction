## ---Main Line 2--- ##

    # Detect
    execute positioned 1 64 -109 store result score #story.chapter_1.mq.2 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    execute positioned 1 64 -109 \
        as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] at @s \
    facing entity @p[distance=..8] eyes run rotate @s ~ 0

    # If true;
    execute positioned 1 64 -109 \
        if score #story.chapter_1.mq.2 global.main matches 1 if score #story.chapter_1.mq.2_temp global.main matches 0 run \
    function story:chapter_1/mq/2/true

    # Else;
    execute positioned 1 64 -109 \
        if score #story.chapter_1.mq.2 global.main matches 0 if score #story.chapter_1.mq.2_temp global.main matches 1 run \
    function story:chapter_1/mq/2/false