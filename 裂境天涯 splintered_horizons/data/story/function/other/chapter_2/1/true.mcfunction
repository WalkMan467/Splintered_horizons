scoreboard players set #story.other.chapter_2.1_temp global.main 1
scoreboard players set story.other.chapter_2.1 story.other 1


execute \
    as @n[tag=aj.isokla.root,limit=1] run \
function aj:isokla/remove/this



execute \
    positioned 381 80 -183 rotated -45 0 run \
function aj:isokla/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }



execute \
    positioned 381 80 -183 \
    in minecraft:the_end \
    unless score #story:icon/story/other/chapter_2/scebe_1 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 381 80 -183 \
    { \
        Tags:["story.other.chapter_2.1.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 512112, 51225, 51521, 331323] \
    }

execute \
        in minecraft:the_end run \
setblock 381 80 -183 light[level=15]

execute \
        in minecraft:the_end run \
setblock 381 81 -183 light[level=15]