## ---Main Line 2--- ##

    # Detect
    execute \
        positioned 1 64 -109 \
        store result score #story.chapter_1.mq.2 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    execute \
        positioned 1 64 -109 \
        if entity @p[distance=..16,predicate=players:detect/movement] \
        as @n[tag=aj.sophia.root,limit=1,distance=..16,type=item_display] at @s \
        facing entity @p[distance=..16] eyes \
        rotated ~ 0 run \
    function animated_java:sophia/move

    # If true;
    execute \
        positioned 1 64 -109 \
        if score #story.chapter_1.mq.2 global.main matches 1 \
        if score #story.chapter_1.mq.2_temp global.main matches 0 run \
    function story:chapter_1/mq/2/true

    # Else;
    execute \
        positioned 1 64 -109 \
        if score #story.chapter_1.mq.2 global.main matches 0 \
        if score #story.chapter_1.mq.2_temp global.main matches 1 run \
    function story:chapter_1/mq/2/false