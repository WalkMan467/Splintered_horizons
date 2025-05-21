title @a times 0 0 20
title @a title {"text":"\uE000","font":"minecraft:screen"}

scoreboard players set .safe_area cutscene.story 0

forceload add 762 931 758 935

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.rainy_night.root] run function animated_java:rainy_night/remove/this

execute rotated 0.0 0.0 positioned 758 143 935 run function animated_java:rainy_night/summon {args: {animation: 'walk', start_animation: true}}

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.rainy_night.root] run tag @s add cutscene.safe_area.0.rainy_night

scoreboard players set @n[type=item_display,tag=cutscene.safe_area.0.rainy_night] cutscene.aj.animation.change 100
scoreboard players set @n[type=item_display,tag=cutscene.safe_area.0.rainy_night] cutscene.aj.animation.state 1

summon minecraft:block_display 759.75 144.00 934.5 {start_interpolation:1,teleport_duration:59,UUID:[I; 121, 12 ,21 ,21],Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Rotation:[25.0f,25.0f],Tags:["cutscene.safe_area.0"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 100
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon

function cutscene:safe_area/main

schedule function cutscene:safe_area/1/0 5s