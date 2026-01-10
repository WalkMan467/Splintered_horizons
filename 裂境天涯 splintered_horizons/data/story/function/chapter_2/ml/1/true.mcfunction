scoreboard players set #story.chapter_2.ml.1_temp global.main 1

kill @e[tag=story.chapter_2.ml.1]

execute \
    as @n[tag=aj.sophia.root,limit=1,type=item_display] run \
function animated_java:sophia/remove/this



execute \
    positioned 807 201 149 rotated 160 0 run \
function animated_java:sophia/summon {args: {animation: 'idle', start_animation: true}}

execute \
    positioned 807 201 149 \
    unless score #story:icon/story/chapter_2/mq/scebe_1 global.main matches 1 \
    as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 807 201 149 {Tags:["story.chapter_2.ml.1.act","interaction.sound.default"],height:2,UUID:[I; 22, 21, 51, 5]}

scoreboard players set story.chapter_2.ml.1 story.chapter_2 1