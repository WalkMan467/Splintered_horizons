scoreboard players set #story.chapter_1.opening.3_temp global.main 1

kill @e[tag=story.chapter_1.opening.3]
execute as @n[tag=aj.rainy_night.root,limit=1] run function animated_java:rainy_night/remove/this

execute positioned 287 182 -187 rotated 90 0 run function animated_java:rainy_night/summon {args: {animation: 'idle', start_animation: true}}

summon interaction 287 182 -187 {Tags:["story.chapter_1.opening.3.act","interaction.sound.default"],height:2,UUID:[I; 2, 313, 55, 11]}

scoreboard players set story.chapter_1.campfire.3 story.chapter_1 1