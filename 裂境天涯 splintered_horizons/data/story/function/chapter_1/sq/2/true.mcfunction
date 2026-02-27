scoreboard players set #story.chapter_1.opening.4_temp global.main 1

kill @e[tag=story.chapter_1.opening.4]

execute \
    as @n[tag=aj.sophia.root,limit=1] run \
function animated_java:sophia/remove/this


execute \
    positioned -2 65 22 rotated 90 0 run \
function animated_java:sophia/summon \
{ \
    args: \
    { \
    animation: 'idle', \
    start_animation: true\
    } \
}


execute \
    positioned -2 65 22 \
    unless score story.chapter_1.sq.1 global.main matches 1 \
as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction -2 65 22 \
    { \
        Tags:["story.chapter_1.opening.4.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 2, 313, 55, 51] \
    }

scoreboard players set story.chapter_1.sq.1 story.chapter_1 1