scoreboard players set #story.chapter_2.ml.8_temp global.main 1
scoreboard players set story.chapter_2.ml.8 story.chapter_2 1

execute \
    positioned 668 73 1620 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
function animated_java:selena/remove/this

execute \
    positioned 668 73 1620 \
    rotated -168.7 0 run \
function animated_java:selena/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 668 73 1620 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 4ab7f628-ad6e-49eb-90c4-22f6285ed3ba
summon interaction 668 73 1620 \
    { \
        Tags:["story.chapter_2.ml.8.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 1253570088 , -1385281045 , -1866194186 , 677303226] \
    }