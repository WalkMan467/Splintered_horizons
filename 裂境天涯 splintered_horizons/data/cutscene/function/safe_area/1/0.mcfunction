summon minecraft:block_display 758 144.5 939.0 {Rotation:[180.0f,10.0f],start_interpolation:0,teleport_duration:59,UUID:[I; 222, 11 ,21 ,21],Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["cutscene.safe_area.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as 000000de-0000-000b-0000-001500000015 at @s run tp @s ~ ~ ~0.5

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 200
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon

function cutscene:safe_area/main

schedule function cutscene:safe_area/2/0 10s