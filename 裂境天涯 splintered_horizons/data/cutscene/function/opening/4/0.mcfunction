execute \
    in minecraft:overworld run \
summon minecraft:block_display 10048.50 114.37 10467.50 {UUID:[I;33131,-312323,312313,13122],teleport_duration:59,Rotation:[0.0f,5.0f],Tags:["cutscene.opening.4"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set 0000816b-fffb-3bfd-0004-c3f900003342 duration 200


execute \
    as 0000816b-fffb-3bfd-0004-c3f900003342 at @s run \
tp @s ~ ~5 ~-5 0 10

schedule function cutscene:opening/5/use 10s