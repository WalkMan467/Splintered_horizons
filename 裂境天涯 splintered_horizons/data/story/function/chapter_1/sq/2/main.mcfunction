## ---開頭--- ##

    scoreboard players add #story.chapter_1.sq.2_temp global.main 0
    scoreboard players add #story.chapter_1.sq.2.enabled global.main 0

    # Detect
    execute \
        positioned 158 91 -429 \
        store result score #story.chapter_1.sq.2 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    execute \
        positioned 158 91 -429 \
        as 0004c3a7-ffff-827d-0031-079d00005a5b at @s \
        facing entity @p[distance=..8] feet run \
    rotate @s ~ ~

        execute \
        positioned 158 91 -429 \
        as 0004c3a7-ffff-827d-0031-079d00005a5b at @s \
        unless entity @p[sort=arbitrary,distance=..8] run \
    rotate @s 180 0

    # If true;
    execute \
        positioned 158 91 -429 \
        if score #story.chapter_1.sq.2 global.main matches 1 \
        if score #story.chapter_1.sq.2_temp global.main matches 0 run \
    function story:chapter_1/sq/2/true

    # Else
    execute \
        positioned 158 91 -429 \
        if score #story.chapter_1.sq.2 global.main matches 0 \
        if score #story.chapter_1.sq.2_temp global.main matches 1 run \
    function story:chapter_1/sq/2/false