scoreboard players set #story.chapter_1.opening.1_temp global.main 0

tag @s remove campfire


kill @e[tag=story.chapter_1.opening.1]
execute as @n[tag=aj.rainy_night.root,limit=1] run function animated_java:rainy_night/remove/this