scoreboard players set #story.opening.2_temp global.main 0
scoreboard players set story.opening.2 story.chapter_1 1

setblock 1575 60 306 air replace

kill 91eefa12-8ab0-434d-afb8-569f21a20c4c


execute \
    as @n[tag=aj.sophia.root,limit=1,distance=..10,type=item_display] run \
function aj:sophia/remove/this