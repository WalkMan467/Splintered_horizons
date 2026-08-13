execute \
    if score #cutscene.opening.force_execution.7.1 global.main matches 1.. run \
return 0

forceload add 718 731

# e300f2c0-b0f4-4ce1-b0a3-1f351104db20
execute \
    in minecraft:overworld run \
summon minecraft:block_display 718.5 173.0 731.5 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-486477120,-1326166815,-1331486923,285530912],Rotation:[-155.5f,10.0f],Tags:["cutscene.opening.7.1"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 718 0 731 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/1 1t

execute \
    unless entity e300f2c0-b0f4-4ce1-b0a3-1f351104db20 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/1 1t

scoreboard players set #cutscene.opening.force_execution.7.1 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/7/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]