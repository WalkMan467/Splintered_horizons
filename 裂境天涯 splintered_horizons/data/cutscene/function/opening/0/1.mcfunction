forceload add 9820 10137

tp @a 10180.5 100.0 10100.5

function cutscene:opening/main
# schedule function cutscene:opening/update_camera/1 1t

# execute \
#     in minecraft:overworld run \
# summon minecraft:block_display 10180.5 100.0 10100.5 {UUID:[I;321321,321123,6543,-12321],Rotation:[-90.0f,-25.0f],Tags:["cutscene.opening.0.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set 0004e729-0004-e663-0000-198fffffcfdf duration 260

schedule function cutscene:opening/1/use 13s