function cutscene:opening/remove_camera

execute in minecraft:overworld run summon minecraft:block_display 10180.5 100.0 10100.5 {Rotation:[-90.0f,-25.0f],Tags:["cutscene.opening.0.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as @a at @s run schedule function cutscene:opening/1/use 13s