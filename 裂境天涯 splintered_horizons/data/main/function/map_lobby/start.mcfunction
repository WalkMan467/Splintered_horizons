time set midnight

function animated_java:rainy_night_dark/remove/all
gamemode spectator @a
kill @e[tag=map_lobby.animation.cam]
summon minecraft:block_display 33010 140.5 32754 {Rotation:[90.0f,0.0f],Tags:["map_lobby.animation.cam"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute as @a run spectate @n[tag=map_lobby.animation.cam,limit=1]
execute rotated -90 0 positioned 33006 139 32754 run function animated_java:rainy_night_dark/summon {args:{}}