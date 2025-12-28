scoreboard players set #story.chapter_2.ml.4_temp global.main 1
scoreboard players set story.chapter_2.ml.4 story.chapter_2 1

kill @e[tag=story.chapter_2.ml.4]


execute \
    as @n[tag=aj.isokla.root,limit=1] run \
function animated_java:isokla/remove/this



execute \
    positioned 928 167 908 rotated -45 0 run \
function animated_java:isokla/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 928 167 908 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 928 167 908 \
    { \
        Tags:["story.chapter_2.ml.4.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 512112, 51225, 51521, 331323] \
    }