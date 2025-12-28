scoreboard players set #story.chapter_2.ml.2_temp global.main 0

tag @s remove campfire

kill 00000019-0000-0015-0000-003300000005
kill @e[tag=story.chapter_2.ml.2]

execute \
    as @n[tag=aj.sophia.root,limit=1] run \
function animated_java:sophia/remove/this

scoreboard players set story.chapter_2.ml.2 story.chapter_2 1