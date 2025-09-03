scoreboard players set #story.chapter_2.campfire.1_temp global.main 1

kill @e[tag=story.chapter_2.campfire.1]
execute as @n[tag=aj.rainy_night.root,limit=1,type=item_display] run function animated_java:rainy_night/remove/this


execute positioned 807 201 149 rotated 160 0 run function animated_java:rainy_night/summon {args: {animation: 'idle', start_animation: true}}

summon interaction 807 201 149 {Tags:["story.chapter_2.campfire.1.act","interaction.sound.default"],height:2,UUID:[I; 22, 21, 51, 5]}

scoreboard players set story.chapter_2.campfire.1 story.chapter_2 1