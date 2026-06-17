scoreboard players set #story.opening.3_temp global.main 1
scoreboard players set story.opening.3 story.chapter_1 1


execute \
    positioned 1574.85 59.75 286 \
    as @n[sort=arbitrary,distance=..3,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/remove/this

execute \
    positioned 1574.85 59.75 286 rotated -90 0 run \
function animated_java:sophia/summon \
    { \
        args:\
        { \
            animation: 'sit_down', \
            start_animation: true \
        } \
    }



execute \
    positioned 1574.85 59.75 286 \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1 \
as @n[sort=arbitrary,tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 74d8b464-9467-4d70-b164-d21e23242a04
summon interaction 1574 60.15 286 \
    { \
        Tags:["story.opening.3.act","interaction.sound.default"], \
        height:2, \
        UUID:[I;1960359012,-1805169296,-1318792674,589572612] \
    }