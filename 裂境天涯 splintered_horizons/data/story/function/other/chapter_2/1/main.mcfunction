## --- Interaction --- ##

    scoreboard players add #story.other.chapter_2.1_temp global.main 0

    # Detect
    execute \
        positioned 381 80 -183 \
        in minecraft:the_end \
    store result score #story.other.chapter_2.1 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    # Rotate to Player
    execute \
        positioned 381 80 -183 \
        in minecraft:the_end \
        as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] at @s \
        facing entity @p[distance=..16] eyes run \
    rotate @s ~ 0

    # If true;
    execute \
        positioned 381 80 -183 \
        in minecraft:the_end \
        if score #story.other.chapter_2.1 global.main matches 1 \
        if score #story.other.chapter_2.1_temp global.main matches 0 run \
    function story:other/chapter_2/1/true

    # Else
    execute \
        positioned 381 80 -183 \
        in minecraft:the_end \
        if score #story.other.chapter_2.1 global.main matches 0 \
        if score #story.other.chapter_2.1_temp global.main matches 1 run \
    function story:other/chapter_2/1/false