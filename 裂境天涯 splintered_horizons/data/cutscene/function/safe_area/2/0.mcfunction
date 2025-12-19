summon minecraft:block_display 758.5 145.25 945.0 {Rotation:[0.0f,0.0f],start_interpolation:0,teleport_duration:59,UUID:[I; 21, 22 ,21 ,21],Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["cutscene.safe_area.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as 00000015-0000-0016-0000-001500000015 at @s run tp @s ~ ~ ~-0.5

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.sophia.root] run function animated_java:sophia/remove/this

execute positioned 759 144 946 facing 758.5 145.25 944.5 rotated ~ 0 run function animated_java:isokla/summon {args: {animation: 'cutscene_chapter_2_1_safe_area_1', start_animation: true}}

execute positioned 757 144 946 facing 758.5 145.25 944.5 rotated ~ 0 run function animated_java:elina/summon {args: {animation: 'idle', start_animation: true}}


scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 260
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon

function cutscene:safe_area/main

schedule function cutscene:safe_area/3/use 13s