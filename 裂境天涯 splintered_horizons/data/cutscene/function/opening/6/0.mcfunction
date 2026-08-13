execute \
    in minecraft:overworld run \
summon minecraft:block_display 9999 95 10070 {UUID:[I;-3213121,3212321,31212,53241],Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.6"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set ffcef8bf-0031-0421-0000-79ec0000cff9 duration 1000

schedule function cutscene:opening/update_camera/1 5t

schedule function cutscene:opening/6/guide 10t