scoreboard players set #story.chapter_1.campfire.2_temp global.main 1

weather rain

kill @e[tag=story.chapter_1.campfire.2]
execute as @n[tag=aj.rainy_night.root,limit=1,distance=..3] run function animated_java:rainy_night/remove/this

execute positioned 1 64 -109 rotated 90 0 run function animated_java:rainy_night/summon {args: {animation: 'idle', start_animation: true}}

execute positioned 1 64 -109 unless score #story:icon/story/chapter_1/scebe_2 global.main matches 1 as @n[type=item_display,tag=aj.rainy_night.root,distance=..3] on passengers run data modify entity @s Glowing set value 1b

summon interaction 1 64 -109 {Tags:["story.chapter_1.campfire.2.act","interaction.sound.default"],height:2,UUID:[I; 22, 313, 55, 11]}

scoreboard players set story.chapter_1.campfire.2 story.chapter_1 1