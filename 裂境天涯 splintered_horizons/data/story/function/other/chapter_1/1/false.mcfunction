scoreboard players set #story.other.chapter_1.1_temp global.main 0
scoreboard players set story.other.chapter_1.1 story.other 1

kill 3513215b-5a44-4aac-bce6-19f02d856816

execute \
    positioned -4 35 96 \
    as @n[sort=arbitrary,tag=aj.selena.root,distance=..1,type=item_display] run \
function aj:selena/remove/this

setblock -4 35 96 air

setblock -4 36 96 air