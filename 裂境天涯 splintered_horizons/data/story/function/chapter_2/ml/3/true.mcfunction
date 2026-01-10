scoreboard players set #story.chapter_2.ml.3_temp global.main 1

kill @e[tag=story.chapter_2.ml.3]

execute \
    as @n[tag=aj.sophia.root,limit=1,type=item_display] run \
function animated_java:sophia/remove/this



execute \
    positioned 867 148 949 rotated 45 0 run \
function animated_java:sophia/summon {args: {animation: 'idle', start_animation: true}}

execute \
    positioned 867 148 949 \
    unless score #story:icon/story/chapter_2/mq/scebe_3 global.main matches 1 \
    as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 867 148 949 {Tags:["story.chapter_2.ml.3.act","interaction.sound.default"],height:2,UUID:[I; 25, 21, 51, 51]}

scoreboard players set story.chapter_2.ml.3 story.chapter_2 1