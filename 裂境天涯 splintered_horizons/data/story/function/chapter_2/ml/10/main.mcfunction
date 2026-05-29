## --- Interaction --- ##

    scoreboard players add #story.chapter_2.ml.10_temp global.main 0

    # Detect
    execute \
    positioned 1131 154 1841 \
    store result score #story.chapter_2.ml.10 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    # Rotate to Player
    execute \
        positioned 1131 154 1841 \
        if entity @p[distance=..16,predicate=players:detect/movement] \
        as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] at @s \
        facing entity @p[distance=..16] eyes \
        rotated ~ 0 run \
    function animated_java:selena/move

    # If true;
    execute \
    positioned 1131 154 1841 \
        if score #story.chapter_2.ml.10 global.main matches 1 \
        if score #story.chapter_2.ml.10_temp global.main matches 0 run \
    function story:chapter_2/ml/10/true

    # Else
    execute \
    positioned 1131 154 1841 \
        if score #story.chapter_2.ml.10 global.main matches 0 \
        if score #story.chapter_2.ml.10_temp global.main matches 1 run \
    function story:chapter_2/ml/10/false