## ---開頭--- ##

    # Detect
    execute positioned -2 65 22 store result score #story.chapter_1.opening.4 global.main if entity @a[distance=..10,gamemode=!spectator]

    execute positioned -2 65 22 as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] at @s facing entity @p[distance=..10] eyes run rotate @s ~ 0

    # If true;
    execute positioned -2 65 22 if score #story.chapter_1.opening.4 global.main matches 1 if score #story.chapter_1.opening.4_temp global.main matches 0 run function story:chapter_1/ml/4/true

    # Else
    execute positioned -2 65 22 if score #story.chapter_1.opening.4 global.main matches 0 if score #story.chapter_1.opening.4_temp global.main matches 1 run function story:chapter_1/ml/4/false