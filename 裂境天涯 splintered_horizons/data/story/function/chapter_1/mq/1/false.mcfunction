scoreboard players set #story.chapter_1.opening.1_temp global.main 0
scoreboard players set story.chapter_1.mq.1 story.chapter_1 1

tag @s remove campfire

kill 00000001-0000-0015-0000-003300000005
kill @e[tag=story.chapter_1.opening.1]
scoreboard players set story.chapter_1.mq.1 story.chapter_1 1


execute \
    as @n[limit=1,tag=aj.sophia.root,type=item_display] run \
function animated_java:sophia/remove/this