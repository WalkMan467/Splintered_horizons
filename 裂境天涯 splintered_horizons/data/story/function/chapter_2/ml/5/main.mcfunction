## --- Interaction --- ##

    scoreboard players add #story.chapter_2.ml.5_temp global.main 0

    # Detect
    execute \
    positioned 1112 82 375 \
    store result score #story.chapter_2.ml.5 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    # Rotate to Player
    execute \
    positioned 1112 82 375 \
        as 0007f419-0040-4d6c-0006-52210000cc5a at @s \
        facing entity @p[distance=..16] eyes run \
    rotate @s ~ 0

    # If true;
    execute \
    positioned 1112 82 375 \
        if score #story.chapter_2.ml.5 global.main matches 1 \
        if score #story.chapter_2.ml.5_temp global.main matches 0 run \
    function story:chapter_2/ml/5/true

    # Else
    execute \
    positioned 1112 82 375 \
        if score #story.chapter_2.ml.5 global.main matches 0 \
        if score #story.chapter_2.ml.5_temp global.main matches 1 run \
    function story:chapter_2/ml/5/false