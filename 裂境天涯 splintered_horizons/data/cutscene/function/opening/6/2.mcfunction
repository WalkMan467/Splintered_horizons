function cutscene:opening/remove_camera

summon minecraft:block_display 9998.5 95.00 10076.5 {Rotation:[-125.00f,10.0f],Tags:["cutscene.opening.6.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute positioned 9999 95 10072 rotated 90 0 run function animated_java:boss_1/summon {args: {animation: 'cutscene_attack', start_animation: true}}

gamemode spectator @a

execute as @a[gamemode=spectator] run spectate @n[type=block_display,tag=cutscene.opening.6.2,limit=1]