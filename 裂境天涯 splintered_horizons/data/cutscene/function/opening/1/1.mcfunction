execute \
    positioned 9820 81 10137 run \
function aj:oceanid/remove/this

tp @a 10042 129 10310

execute \
    in minecraft:overworld run \
summon minecraft:block_display 10042 129 10310 {UUID:[I;321321,31232,6543,-42121],teleport_duration:59,Rotation:[-90.0f,15.0f],Tags:["cutscene.opening.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

function cutscene:opening/main

schedule function cutscene:opening/1/2 2s