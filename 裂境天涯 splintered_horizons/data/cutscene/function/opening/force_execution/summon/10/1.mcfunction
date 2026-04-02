execute \
    if score #cutscene.opening.force_execution.10.1 global.main matches 1.. run \
return 0

forceload add 1063 -190 1062 -185

# 8b61e851-f0af-4fc7-b218-74f1a426cf25
execute \
    in minecraft:overworld run \
summon minecraft:block_display 1063 250 -190 {UUID:[I;-1956517807, -256946233, -1307020047, -1540960475],Rotation:[0.0f,0.0f],block_state: {Name: "minecraft:air"}}

fill 1052 253 -185 1070 240 -185 end_gateway{Age:201}

execute \
    unless loaded 1063 0 -190 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

execute \
    unless entity 8b61e851-f0af-4fc7-b218-74f1a426cf25 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

scoreboard players set #cutscene.opening.force_execution.10.1 global.main 1
particle minecraft:explosion_emitter 1063 253 -190 1 1 1 0 100 force @a

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/10/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]