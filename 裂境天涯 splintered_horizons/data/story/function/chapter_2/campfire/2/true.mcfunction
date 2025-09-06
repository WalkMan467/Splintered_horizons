scoreboard players set #story.chapter_2.campfire.2_temp global.main 1

kill @e[tag=story.chapter_2.campfire.2]
execute as @n[tag=aj.rainy_night.root,limit=1,type=item_display] run function animated_java:rainy_night/remove/this


execute positioned 926.50 167.2 907.75 rotated 0 0 run function animated_java:rainy_night/summon {args:{}}

summon interaction 926.50 167.2 907.75 {Tags:["story.chapter_2.campfire.2.act","interaction.sound.default"],height:2,UUID:[I; 25, 21, 51, 5]}

summon minecraft:item_display 925.5 167.625 908.0 {Tags:["story.chapter_2.campfire.2"],brightness: {block: 15, sky: 15}, item: {count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [-0.13016956f, 0.19191396f, 0.82340604f, 0.5179068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000002f, 1.0000005f, 1.0000014f], translation: [0.0f, 0.0f, 0.0f]}}
execute as @n[tag=aj.rainy_night.root,limit=1,type=item_display] run function animated_java:rainy_night/animations/sit_down/play

scoreboard players set story.chapter_2.campfire.2 story.chapter_2 1