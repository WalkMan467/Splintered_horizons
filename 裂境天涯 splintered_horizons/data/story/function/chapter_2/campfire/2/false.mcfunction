scoreboard players set #story.chapter_2.campfire.2_temp global.main 0

tag @s remove campfire

kill 00000019-0000-0015-0000-003300000005
kill @e[tag=story.chapter_2.campfire.2]
scoreboard players set story.chapter_2.ml story.chapter_2 1
execute as @n[tag=aj.rainy_night.root,limit=1] run function animated_java:rainy_night/remove/this