scoreboard players set #story.opening.1_temp global.main 0
scoreboard players set story.opening.1 story.chapter_1 1

setblock 1574 60 329 air replace

kill 0a9c3558-d906-415b-8345-8352bf7ce93c

execute \
    as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] run \
function animated_java:sophia/remove/this