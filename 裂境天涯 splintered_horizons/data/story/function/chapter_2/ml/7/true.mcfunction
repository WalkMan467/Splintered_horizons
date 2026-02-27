scoreboard players set #story.chapter_2.ml.7_temp global.main 1
scoreboard players set story.chapter_2.ml.7 story.chapter_2 1

execute \
    positioned 903 112 482 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
function animated_java:selena/remove/this

execute \
    positioned 903 112 482 rotated -45 0 run \
function animated_java:selena/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 903 112 482 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 903 112 482 \
    { \
        Tags:["story.chapter_2.ml.7.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; -123321, 51225, 51521, 331323] \
    }