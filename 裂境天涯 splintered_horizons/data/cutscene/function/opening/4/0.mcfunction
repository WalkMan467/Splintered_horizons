function cutscene:opening/remove_camera

execute in minecraft:overworld run summon minecraft:block_display 10048.50 114.37 10467.50 {teleport_duration:59,Rotation:[0.0f,5.0f],Tags:["cutscene.opening.4"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as @n[tag=cutscene.opening.4,limit=1,type=block_display] at @s run tp @s ~ ~5 ~-5 0 10

schedule function cutscene:opening/5/use 5s