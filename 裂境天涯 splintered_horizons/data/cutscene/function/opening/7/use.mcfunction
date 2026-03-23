function animated_java:kyle/remove/all
function animated_java:aska/remove/all
function animated_java:oceanid/remove/all

forceload add 1025 -126

tp @a 1025.5 137.50 -125.5 -152.5 8.5

execute \
    in minecraft:overworld run \
summon minecraft:block_display 1025.5 138.50 -125.5 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-32132131,-42421,-321231,-321323],Rotation:[-152.5f,8.5f],Tags:["cutscene.opening.7"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

forceload add 718 731

schedule function cutscene:opening/7/0 3.5s
schedule function cutscene:opening/force_execution/summon/7/0 1t