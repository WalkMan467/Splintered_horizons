scoreboard players set #story.chapter_2.ml.3_temp global.main 0

kill 00000019-0000-0015-0000-003300000033
kill @e[tag=story.chapter_2.ml.3]
execute as @n[tag=aj.rainy_night.root,limit=1] run function animated_java:rainy_night/remove/this

scoreboard players set story.chapter_2.ml.3 story.chapter_2 1