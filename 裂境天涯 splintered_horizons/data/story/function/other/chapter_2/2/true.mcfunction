scoreboard players set #story.other.chapter_2.2_temp global.main 1
scoreboard players set story.other.chapter_2.2 story.other 1


execute \
    as @n[tag=aj.isokla.root,limit=1] run \
function aj:isokla/remove/this



execute \
    positioned 360 100 -274 rotated 5 0 run \
function aj:isokla/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    unless score #story:icon/story/other/chapter_2/scebe_1 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 360 100 -274 \
    { \
        Tags:["story.other.chapter_2.2.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; -422145121, 42314642, -9035124, -267391230] \
    }

execute \
        in minecraft:the_end run \
setblock 360 100 -274 light[level=15]

execute \
        in minecraft:the_end run \
setblock 360 101 -274 light[level=15]