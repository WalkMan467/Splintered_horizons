function cutscene:opening/remove_camera

summon minecraft:block_display 9999 95 10070 {Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.6"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

schedule function cutscene:opening/7/use 25s