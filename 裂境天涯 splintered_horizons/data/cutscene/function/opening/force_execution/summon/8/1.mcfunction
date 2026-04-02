execute \
    if score #cutscene.opening.force_execution.8.1 global.main matches 1.. run \
return 0

forceload add -3 -58
forceload add 0 -58

execute \
    in minecraft:overworld \
    positioned 0 64 -58 rotated -90 0 run \
function animated_java:oceanid/summon {args: {animation: 'death', start_animation: true}}


# f4bf3316-e54c-455d-8ca7-8025a7df5ade
execute \
    in minecraft:overworld \
    rotated -90 0 run \
summon minecraft:block_display -3 66 -58 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-188796138,-447986339,-1935179739,-1478534434],Rotation:[-90.0f,25.0f],Tags:["cutscene.opening.8.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded -3 0 -58 run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/1 1t

execute \
    unless loaded 0 64 -58 run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/1 1t

execute \
    positioned 0 64 -58 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.oceanid.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/1 1t

execute \
    unless entity f4bf3316-e54c-455d-8ca7-8025a7df5ade run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/1 1t

scoreboard players set #cutscene.opening.force_execution.8.1 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/8/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]

schedule function cutscene:opening/force_execution/remove/8/1 4s