forceload add 9999 10070 9999 10070
forceload add 9872 10346


execute \
    in minecraft:overworld run \
summon minecraft:block_display 9872.50 106.49 10346.50 {UUID:[I;321313,321123,6543,-42121],teleport_duration:59,Rotation:[0.0f,30.0f],Tags:["cutscene.opening.5"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set 0004e721-0004-e663-0000-198fffff5b77 duration 480

execute \
    as 0004e721-0004-e663-0000-198fffff5b77 at @s run \
tp @s ~ ~5 ~-10 0 20

schedule function cutscene:opening/6/use 22.5s

schedule function cutscene:opening/5/1 22s