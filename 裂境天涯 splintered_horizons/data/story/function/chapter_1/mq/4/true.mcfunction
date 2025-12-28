scoreboard players set #story.chapter_1.mq.4_temp global.main 1
scoreboard players set story.chapter_1.mq.4 story.chapter_1 1

kill @e[tag=story.chapter_1.mq.4]

execute \
    as @n[tag=aj.sophia.root,limit=1,distance=..3] run \
function animated_java:sophia/remove/this


execute \
    positioned 14 83 -337 \
    rotated 90 0 run \
function animated_java:sophia/summon \
    { \
        args: \
        { \
        animation: 'idle', \
        start_animation: true\
        } \
    }


execute \
    positioned 14 83 -337 \
    unless score #story:icon/story/chapter_1/mq/scebe_4 global.main matches 1 \
as @n[type=item_display,tag=aj.sophia.root,distance=..3] on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 14 83 -337 \
    { \
        Tags:["story.chapter_1.mq.4.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 2, 511, 551, 11] \
    }

scoreboard players set story.chapter_1.mq.4 story.chapter_1 1