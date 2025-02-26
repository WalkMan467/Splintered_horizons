tag @a add cutscene.opening

function animated_java:kyle/remove/all

tp @a 42.0 67.80 11.0 -90 5

function cutscene:opening/remove_camera

summon minecraft:block_display 42.17 67.80 11.39 {teleport_duration:59,Rotation:[-90.0f,5.0f],Tags:["cutscene.opening.7"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}



execute in minecraft:overworld run forceload remove 41 10 43 12

schedule function cutscene:opening/7/1 5t