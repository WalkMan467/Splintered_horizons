execute \
    if score #cutscene.opening.force_execution.7.0 global.main matches 1.. run \
return 0

forceload add 718 731
forceload add 1028 -129
forceload add 1027 -129
forceload add 1026 -130

execute \
    in minecraft:overworld \
    positioned 1026 136 -130 \
    rotated -152.5 0 run \
function animated_java:stellar_animation/summon {args: {animation: 'idle', start_animation: true}}

execute \
    in minecraft:overworld \
    positioned 1028 136 -129 \
    rotated -152.5 0 run \
function animated_java:sophia/summon {args: {animation: 'idle', start_animation: true}}

execute \
    in minecraft:overworld \
    positioned 1027.25 136 -128.5 \
    rotated -152.5 0 run \
function animated_java:isokla/summon {args: {animation: 'idle', start_animation: true}}

# 89e87545-f962-49b3-a510-a7da8d3f226d
execute \
    in minecraft:overworld run \
summon minecraft:block_display 718.5 173.0 731.5 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-1981254331,-110999117,-1525635110,-1925242259],Rotation:[-155.5f,10.0f],Tags:["cutscene.opening.7.0"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 1026 0 -130 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/0 1t

execute \
    unless loaded 1028 0 -129 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/0 1t

execute \
    unless loaded 1027 0 -129 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/0 1t

execute \
    unless loaded 718 0 731 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/0 1t

execute \
    unless entity 89e87545-f962-49b3-a510-a7da8d3f226d run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/0 1t

scoreboard players set #cutscene.opening.force_execution.7.0 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/7/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]