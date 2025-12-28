function cutscene:opening/remove_camera

summon minecraft:block_display 9997.5 94.75 10067.00 {Rotation:[-135.00f,15.0f],Tags:["cutscene.opening.6.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

gamemode spectator @a


execute \
    as @a[gamemode=spectator] run \
spectate @n[type=block_display,tag=cutscene.opening.6.2,limit=1]

schedule function cutscene:opening/6/3 0.5s