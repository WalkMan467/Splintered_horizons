title @s times 0 65 0
title @s title {"text":"\uE000","font":"minecraft:screen"}

scoreboard players set .opening cutscene.story 0

function cutscene:opening/0/music

function cutscene:opening/remove_camera

forceload add 9999 10070 9999 10070

summon minecraft:block_display 9999 95 10070 {Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.0"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}


function cutscene:opening/main
function cutscene:opening/story/0

execute as @a at @s run schedule function cutscene:opening/0/1 12s