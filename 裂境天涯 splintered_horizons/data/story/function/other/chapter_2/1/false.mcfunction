scoreboard players set #story.other.chapter_2.1_temp global.main 0
scoreboard players set story.other.chapter_2.1 story.other 1

kill 0007d070-0000-c819-0000-c94100050e3b

execute \
    positioned 381 80 -183 \
    in minecraft:the_end \
    as @n[tag=aj.isokla.root,limit=1,distance=0..,type=item_display] run \
function animated_java:isokla/remove/this