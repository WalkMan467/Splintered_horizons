summon minecraft:block_display 758.1 145.375 945.5 {Rotation:[35.0f,0.0f],start_interpolation:0,teleport_duration:59,UUID:[I; 22, 22 ,21 ,25],Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["cutscene.safe_area.4"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set @n[tag=main.duration.timer,tag=summon,type=marker] duration 300
tag @n[tag=main.duration.timer,tag=summon,type=marker] remove summon

function cutscene:safe_area/main