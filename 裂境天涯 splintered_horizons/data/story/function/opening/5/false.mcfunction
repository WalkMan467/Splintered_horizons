scoreboard players set #story.opening.5_temp global.main 0
scoreboard players set story.opening.5 story.chapter_1 1

tag @s remove campfire

kill 955fb949-151d-48af-8ecf-e50c4b6a49f8
scoreboard players set story.opening.5 story.chapter_1 1


execute \
    positioned 1577 60 130 \
    as @n[sort=arbitrary,distance=..3,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/remove/this