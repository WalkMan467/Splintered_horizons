scoreboard players set #story.chapter_2.ml.6_temp global.main 1
scoreboard players set story.chapter_2.ml.6 story.chapter_2 1

execute \
    positioned 928 167 908 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
function aj:selena/remove/this

execute \
    positioned 928 167 908 rotated -45 0 run \
function aj:selena/summon \
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
        Tags:["story.chapter_2.ml.6.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; -1231, 51225, 51521, 331323] \
    }