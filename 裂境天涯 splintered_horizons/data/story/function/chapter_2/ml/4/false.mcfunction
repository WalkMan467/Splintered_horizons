scoreboard players set #story.chapter_2.ml.4_temp global.main 0
scoreboard players set story.chapter_2.ml.4 story.chapter_2 1

kill 0007d070-0000-c819-0000-c94100050e3b
kill @e[tag=story.chapter_2.ml.4]

execute \
    as @n[tag=aj.isokla.root,limit=1] run \
function animated_java:isokla/remove/this