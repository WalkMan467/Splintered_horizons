scoreboard players set #story.chapter_2.ml.9_temp global.main 1
scoreboard players set story.chapter_2.ml.9 story.chapter_2 1

execute \
    positioned 802 71 1592 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
function animated_java:selena/remove/this

execute \
    positioned 802 71 1592 \
    rotated -45.0 0 run \
function animated_java:selena/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 802 71 1592 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# b4cc1055-f505-4721-aaf7-1b2d953e57dd
summon interaction 802 71 1592 \
    { \
        Tags:["story.chapter_2.ml.9.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; -1261694891,-184203487,-1426646227,-1791076387] \
    }