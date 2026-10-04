scoreboard players set #story.other.chapter_1.1_temp global.main 1
scoreboard players set story.other.chapter_1.1 story.other 1


execute \
    positioned -4 35 96 \
    as @n[distance=..1,sort=arbitrary,tag=aj.selena.root,type=item_display] run \
function aj:selena/remove/this



execute \
    positioned -4 35 96 \
    rotated -45 0 run \
function aj:selena/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned -4 35 96 \
    unless score #story:icon/story/other/chapter_1/scebe_1 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 3513215b-5a44-4aac-bce6-19f02d856816

summon interaction -4 35 96 \
    { \
        Tags:["story.other.chapter_1.1.act","interaction.sound.default"], \
        height:2, \
        UUID:[I;890446171,1514425004,-1125770768,763717654] \
    }

setblock -4 35 96 light[level=15]

setblock -4 36 96 light[level=15]