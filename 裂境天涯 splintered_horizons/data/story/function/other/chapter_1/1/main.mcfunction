## --- Interaction --- ##

    scoreboard players add #story.other.chapter_1.1_temp global.main 0

    # Detect
    execute \
        in minecraft:the_end \
        positioned -4 35 98 \
    store result score #story.other.chapter_1.1 global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    # Rotate to Player
    execute \
        in minecraft:the_end \
        positioned -4 35 96 \
        if entity @p[distance=..8,predicate=players:detect/movement] \
        as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] at @s \
        facing entity @p[distance=..8] eyes \
        rotated ~ 0 run \
    function aj:selena/move

    # If true;
    execute \
        positioned -4 35 98 \
        in minecraft:the_end \
        if score #story.other.chapter_1.1 global.main matches 1 \
        if score #story.other.chapter_1.1_temp global.main matches 0 run \
    function story:other/chapter_1/1/true

    # Else
    execute \
        positioned -4 35 98 \
        in minecraft:the_end \
        if score #story.other.chapter_1.1 global.main matches 0 \
        if score #story.other.chapter_1.1_temp global.main matches 1 run \
    function story:other/chapter_1/1/false