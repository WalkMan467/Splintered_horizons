function cutscene:opening/remove_camera

execute in minecraft:overworld run summon minecraft:block_display 9975.58 54.97 10313.44 {teleport_duration:59,Rotation:[0.0f,-5.0f],Tags:["cutscene.opening.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as @n[tag=cutscene.opening.2,limit=1,type=block_display] at @s run tp @s 9975.58 57.0 10309.50 -2.65 15.26

schedule function cutscene:opening/3/use 5s