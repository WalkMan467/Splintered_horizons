function cutscene:opening/remove_camera

summon minecraft:block_display 10008.5 109.0 10159.0 {teleport_duration:40,Rotation:[0.0f,0.0f],Tags:["cutscene.opening.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

function cutscene:opening/1/0

schedule function cutscene:opening/1/1 6s