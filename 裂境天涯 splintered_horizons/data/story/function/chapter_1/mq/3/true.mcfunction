scoreboard players set #story.chapter_1.opening.3_temp global.main 1
scoreboard players set story.chapter_1.mq.3 story.chapter_1 1

kill @e[tag=story.chapter_1.opening.3]


execute \
    as @n[tag=aj.sophia.root,limit=1] run \
function animated_java:sophia/remove/this


execute \
    positioned 287 182 -187 \
    rotated 90 0 run \
function animated_java:sophia/summon {args: {animation: 'idle', start_animation: true}}


execute \
    positioned 287 182 -187 \
    unless score #story:icon/story/chapter_1/mq/scebe_3 global.main matches 1 \
    as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 287 182 -187 \
    {\
        Tags:\
            [\
                "story.chapter_1.opening.3.act",\
                "interaction.sound.default"\
            ],\
        height:2,\
        UUID:[I; 2, 313, 55, 11]\
    }

scoreboard players set story.chapter_1.mq.3 story.chapter_1 1