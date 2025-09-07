scoreboard players set #story.chapter_1.campfire.2_temp global.main 0

weather clear

scoreboard players set story.chapter_1.campfire.2 story.chapter_1 1
kill 00000016-0000-0139-0000-00370000000b
kill @e[tag=story.chapter_1.campfire.2]
execute as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] run function animated_java:rainy_night/remove/this

scoreboard players set story.chapter_1.campfire.2 story.chapter_1 1