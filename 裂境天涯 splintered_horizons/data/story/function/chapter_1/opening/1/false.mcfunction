execute if score #story.chapter_1.opening.1 global.main matches 0 run return fail
scoreboard players set #story.chapter_1.opening.1 global.main 0

tag @s remove compfire

kill @e[tag=story.chapter_1.opening.1]
execute as @n[tag=aj.aaron.root,limit=1] run function animated_java:aaron/remove/this