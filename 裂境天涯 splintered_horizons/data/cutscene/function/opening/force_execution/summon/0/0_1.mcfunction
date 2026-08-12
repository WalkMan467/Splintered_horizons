execute \
    if score #cutscene.opening.force_execution.0.0_1 global.main matches 1.. run \
return 0

forceload add 10180 10100

execute \
    in minecraft:overworld run \
summon minecraft:block_display 10180.5 100.0 10100.5 {UUID:[I;321321,321123,6543,-12321],Rotation:[-90.0f,-25.0f],Tags:["cutscene.opening.0.1"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 10180 0 10100 run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/0_1 1t

execute \
    unless entity 0004e729-0004-e663-0000-198fffffcfdf run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/0_1 1t

scoreboard players set #cutscene.opening.force_execution.0.0_1 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/0/0_1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]