## --- Interaction --- ##

    scoreboard players add #story.chapter_2.ml.4_temp global.main 0

    # Detect
    execute \
    positioned 928 167 908 \
    store result score #story.chapter_2.ml.4 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    # Rotate to Player
    execute \
    positioned 928 167 908 \
        as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] at @s \
        facing entity @p[distance=..16] eyes run \
    rotate @s ~ 0

    # If true;
    execute \
    positioned 928 167 908 \
        if score #story.chapter_2.ml.4 global.main matches 1 \
        if score #story.chapter_2.ml.4_temp global.main matches 0 run \
    function story:chapter_2/ml/4/true

    # Else
    execute \
    positioned 928 167 908 \
        if score #story.chapter_2.ml.4 global.main matches 0 \
        if score #story.chapter_2.ml.4_temp global.main matches 1 run \
    function story:chapter_2/ml/4/false