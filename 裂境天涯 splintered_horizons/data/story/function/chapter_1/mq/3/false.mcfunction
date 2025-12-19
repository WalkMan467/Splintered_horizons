scoreboard players set #story.chapter_1.opening.3_temp global.main 0
scoreboard players set story.chapter_1.mq.3 story.chapter_1 1

kill 00000002-0000-0139-0000-00370000000b
kill @e[tag=story.chapter_1.opening.3]
execute \
    as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] run \
function animated_java:sophia/remove/this