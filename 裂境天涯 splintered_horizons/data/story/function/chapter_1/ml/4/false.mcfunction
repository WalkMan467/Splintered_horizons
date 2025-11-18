scoreboard players set #story.chapter_1.opening.4_temp global.main 0

kill 00000002-0000-0139-0000-003700000033
kill @e[tag=story.chapter_1.opening.4]
execute as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] run function animated_java:rainy_night/remove/this

scoreboard players set story.chapter_1.ml.4 story.chapter_1 1