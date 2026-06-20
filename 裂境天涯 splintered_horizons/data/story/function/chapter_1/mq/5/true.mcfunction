scoreboard players set #story.chapter_1.opening.5_temp global.main 1
scoreboard players set story.chapter_1.mq.5 story.chapter_1 1

execute \
    positioned 18 29.75 -429.0 \
    as @n[sort=arbitrary,tag=aj.sophia.root,distance=..1,type=item_display] run \
function aj:sophia/remove/this



execute \
    positioned 18 29.75 -429.0 rotated 0 0 run \
function aj:sophia/summon \
    { \
        args:\
        { \
            animation: 'sit_down', \
            start_animation: true \
        } \
    }



execute \
    positioned 18 29.75 -429.0 \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1 \
as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 18 29.75 -429.5 \
    { \
        Tags:["story.chapter_1.opening.5.act","interaction.sound.default"], \
        height:2, \
        width:1.05, \
        UUID:[I; -24133, 4212, -42131, 32112] \
    }