scoreboard players set #story.other.chapter_2.2_temp global.main 0
scoreboard players set story.other.chapter_2.2 story.other 1

kill e6d6939f-0285-ab92-ff76-228cf00fef02

execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    as @n[tag=aj.isokla.root,limit=1,distance=0..,type=item_display] run \
function aj:isokla/remove/this

execute \
        in minecraft:the_end run \
setblock 360 100 -274 air

execute \
        in minecraft:the_end run \
setblock 360 101 -274 air