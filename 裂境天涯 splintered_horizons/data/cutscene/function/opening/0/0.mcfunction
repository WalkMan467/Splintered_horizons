title @s times 0 65 0
title @s title {"text":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

scoreboard players set .opening cutscene.story 0

tp @a 9999 95 10070

function cutscene:opening/0/music

function cutscene:opening/add_forceload

# summon minecraft:block_display 9999 95 10070 {UUID:[I;321321,321123,6543,-42121],Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.0"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set 0004e729-0004-e663-0000-198fffff5b77 duration 240

function cutscene:opening/main
# schedule function cutscene:opening/update_camera/1 1t
function cutscene:opening/story/0


schedule function cutscene:opening/0/1 12s