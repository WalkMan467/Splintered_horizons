## ---開頭--- ##

    # Detect
    execute positioned 867 148 949 store result score #story.chapter_2.ml.3 global.main if entity @a[distance=..6,gamemode=!spectator]

    execute positioned 867 148 949 as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] at @s facing entity @p[distance=..6] eyes run rotate @s ~ 0

    # If true;
    execute positioned 867 148 949 if score #story.chapter_2.ml.3 global.main matches 1 if score #story.chapter_2.ml.3_temp global.main matches 0 run function story:chapter_2/ml/3/true

    # Else
    execute positioned 867 148 949 if score #story.chapter_2.ml.3 global.main matches 0 if score #story.chapter_2.ml.3_temp global.main matches 1 run function story:chapter_2/ml/3/false