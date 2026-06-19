scoreboard players set #story.chapter_2.ml.10_temp global.main 1
scoreboard players set story.chapter_2.ml.10 story.chapter_2 1

execute \
    positioned 1131 154 1841 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
function aj:selena/remove/this

execute \
    positioned 1131 154 1841 \
    rotated -125.0 0 run \
function aj:selena/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 1131 154 1841 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 129d8265-191e-3dd8-e6e1-9f01f1d78c14
summon interaction 1131 154 1841 \
    { \
        Tags:["story.chapter_2.ml.10.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 312312421,421412312,-421421311,-237532140] \
    }