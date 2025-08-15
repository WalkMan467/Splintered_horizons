execute in minecraft:overworld run summon minecraft:block_display 10055 125 10310 {teleport_duration:59,Rotation:[0.0f,30.0f],Tags:["cutscene.opening.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute as @n[tag=cutscene.opening.1,limit=1,type=block_display] at @s run tp @s ~ ~5 ~-10 0 20


schedule function cutscene:opening/1/2 2s