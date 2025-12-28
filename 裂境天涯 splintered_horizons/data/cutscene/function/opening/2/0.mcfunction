function cutscene:opening/remove_camera


execute \
    positioned 10055 123 10310 \
    as @n[tag=aj.amysis.root,type=item_display,distance=..3] run \
function animated_java:amysis/remove/this


execute \
    in minecraft:overworld run \
summon minecraft:block_display 9971.5 55.0 10322.5 {teleport_duration:59,Rotation:[-90.0f,-5.0f],Tags:["cutscene.opening.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}


execute \
    as @n[tag=cutscene.opening.2,limit=1,type=block_display] at @s run \
tp @s ~-2.5 ~ ~ ~ 5

forceload remove 10055 10310

schedule function cutscene:opening/3/use 10s