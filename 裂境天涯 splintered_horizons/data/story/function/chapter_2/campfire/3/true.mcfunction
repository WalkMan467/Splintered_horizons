scoreboard players set #story.chapter_2.campfire.3_temp global.main 1

kill @e[tag=story.chapter_2.campfire.3]
execute as @n[tag=aj.rainy_night.root,limit=1,type=item_display] run function animated_java:rainy_night/remove/this


execute positioned 867 148 949 rotated 45 0 run function animated_java:rainy_night/summon {args: {animation: 'idle', start_animation: true}}

summon interaction 867 148 949 {Tags:["story.chapter_2.campfire.3.act","interaction.sound.default"],height:2,UUID:[I; 25, 21, 51, 51]}

scoreboard players set story.chapter_2.campfire.3 story.chapter_2 1