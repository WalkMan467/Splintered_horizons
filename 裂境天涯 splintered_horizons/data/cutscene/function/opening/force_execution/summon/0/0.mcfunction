execute \
    if score #cutscene.opening.force_execution.0.0 global.main matches 1.. run \
return 0

forceload add 9999 10070

execute \
    in minecraft:overworld run \
summon minecraft:block_display 9999 95 10070 {UUID:[I;321321,321123,6543,-42121],Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.0"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 9999 0 10070 run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/0 1t

execute \
    unless entity 0004e729-0004-e663-0000-198fffff5b77 run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/0 1t

scoreboard players set #cutscene.opening.force_execution.0.0 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/0/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]