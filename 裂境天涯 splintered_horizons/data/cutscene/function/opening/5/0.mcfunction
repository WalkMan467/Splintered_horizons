function cutscene:opening/remove_camera

forceload add 9999 10070 9999 10070
forceload add 9872 10346


execute \
    in minecraft:overworld run \
summon minecraft:block_display 9872.50 106.49 10346.50 {teleport_duration:59,Rotation:[0.0f,30.0f],Tags:["cutscene.opening.5"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}


execute \
    as @n[tag=cutscene.opening.5,limit=1,type=block_display] at @s run \
tp @s ~ ~5 ~-10 0 20

schedule function cutscene:opening/6/use 24s