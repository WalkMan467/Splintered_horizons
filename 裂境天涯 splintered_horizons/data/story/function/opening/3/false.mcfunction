scoreboard players set #story.opening.3_temp global.main 0
scoreboard players set story.opening.3 story.chapter_1 1

tag @s remove campfire

kill 74d8b464-9467-4d70-b164-d21e23242a04
scoreboard players set story.opening.3 story.chapter_1 1


execute \
    positioned 1574.85 59.75 286 \
    as @n[sort=arbitrary,distance=..3,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/remove/this