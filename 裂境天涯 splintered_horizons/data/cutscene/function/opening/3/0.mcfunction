execute \
    in minecraft:overworld run \
summon minecraft:block_display 9924.50 76.5 10414.50 {UUID:[I;-32132313,321313,-4122321,1234121],teleport_duration:59,Rotation:[0.0f,-5.0f],Tags:["cutscene.opening.3"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set fe15b327-0004-e721-ffc1-192f0012d4c9 duration 200

execute \
    as fe15b327-0004-e721-ffc1-192f0012d4c9 at @s run \
tp @s 9924.50 79.18 10410.22 -3960.06 31.76

schedule function cutscene:opening/4/use 10s