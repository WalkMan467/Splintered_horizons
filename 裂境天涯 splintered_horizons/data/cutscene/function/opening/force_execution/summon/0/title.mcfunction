
execute \
    if score #cutscene.opening.force_execution.0.title global.main matches 1.. run \
return 0

forceload add 9999 10070

# 000000d3-0000-0004-0000-000100000001
execute \
    in minecraft:overworld run \
summon area_effect_cloud 9999 95 10070 {Rotation:[180.0f,0.0f],custom_particle:{type:"block",block_state:"minecraft:air"},UUID:[I;211,4,1,1],Radius:0f,Duration:800,Tags:["cutscene.opening.0.title"]}

execute \
    unless loaded 9999 0 10070 run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/title 1t

execute \
    unless entity 000000d3-0000-0004-0000-000100000001 run \
    return run \
schedule function cutscene:opening/force_execution/summon/0/title 1t

scoreboard players set #cutscene.opening.force_execution.0.title global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/0/title>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]

schedule function cutscene:opening/force_execution/remove/0/title 40s replace