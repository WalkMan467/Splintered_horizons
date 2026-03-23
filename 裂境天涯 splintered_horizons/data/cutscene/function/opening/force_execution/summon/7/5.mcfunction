execute \
    if score #cutscene.opening.force_execution.7.5 global.main matches 1.. run \
return 0

forceload add 199 -411

# 42b1bd22-0f5b-4538-ae77-8dea62a30678
execute \
    in minecraft:overworld run \
summon minecraft:block_display 199 112 -411 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;1118944546,257639736,-1367896598,1654851192],Rotation:[180.0f,-5.0f],Tags:["cutscene.opening.7.5"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 199 0 -411 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/5 1t

execute \
    unless entity 42b1bd22-0f5b-4538-ae77-8dea62a30678 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/5 1t

scoreboard players set #cutscene.opening.force_execution.7.5 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/7/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]