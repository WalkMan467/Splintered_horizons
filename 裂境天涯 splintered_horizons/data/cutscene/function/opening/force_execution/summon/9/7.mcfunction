execute \
    if score #cutscene.opening.force_execution.9.7 global.main matches 1.. run \
return 0

forceload add 51 -438

# 99024724-ce00-452f-9a3b-c5762fd7f03a

execute \
    in minecraft:overworld \
    rotated 180 60 run \
summon minecraft:block_display 51 43 -438 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-1727903964,-838843089,-1707358858,802680890],Rotation:[180.0f,60.0f],Tags:["cutscene.opening.9.7"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 51 43 -438 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/7 1t

execute \
    unless entity 99024724-ce00-452f-9a3b-c5762fd7f03a run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/7 1t

scoreboard players set #cutscene.opening.force_execution.9.7 global.main 1

tp 99024724-ce00-452f-9a3b-c5762fd7f03a 67.15 42.26 -435.85 -125 0.0
schedule function cutscene:opening/9/8 3s

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/9/7>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]