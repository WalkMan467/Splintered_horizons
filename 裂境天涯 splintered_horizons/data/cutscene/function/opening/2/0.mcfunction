function cutscene:opening/remove_camera

execute in minecraft:overworld run summon minecraft:block_display 9971.5 55.0 10322.5 {teleport_duration:59,Rotation:[-90.0f,-5.0f],Tags:["cutscene.opening.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as @n[tag=cutscene.opening.2,limit=1,type=block_display] at @s run tp @s ~-2.5 ~ ~ ~ 5

schedule function cutscene:opening/3/use 10s