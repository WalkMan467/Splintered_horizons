scoreboard players set #story.chapter_1.mq.4_temp global.main 0
scoreboard players set story.chapter_1.mq.4 story.chapter_1 1

kill 00000002-0000-01ff-0000-02270000000b
kill @e[tag=story.chapter_1.mq.4]

execute as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] run \
function animated_java:rainy_night/remove/this