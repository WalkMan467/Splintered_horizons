scoreboard players set #story.chapter_1.opening.5_temp global.main 0
scoreboard players set story.chapter_1.mq.5 story.chapter_1 1

tag @s remove campfire

kill ffffa1bb-0000-1074-ffff-5b6d00007d70


execute \
    positioned 18 29.75 -429.0 \
    as @n[sort=arbitrary,tag=aj.sophia.root,distance=..1,type=item_display] run \
function aj:sophia/remove/this