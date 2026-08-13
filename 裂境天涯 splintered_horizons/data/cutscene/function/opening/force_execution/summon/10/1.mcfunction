execute \
    if score #cutscene.opening.force_execution.10.1 global.main matches 1.. run \
return 0

forceload add 10047 9443 10019 9443
forceload add 10032 9436

# 8b61e851-f0af-4fc7-b218-74f1a426cf25
execute \
    in minecraft:overworld run \
summon minecraft:block_display 10032 -51 9436 {UUID:[I;-1956517807, -256946233, -1307020047, -1540960475],Rotation:[0.0f,0.0f],block_state: {id: "minecraft:air"}}

fill 10047 -59 9443 10019 -39 9443 end_gateway{Age:201}

execute \
    unless loaded 10032 0 9436 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

execute \
    unless loaded 10019 0 9443 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

execute \
    unless loaded 10047 0 9443 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

execute \
    unless entity 8b61e851-f0af-4fc7-b218-74f1a426cf25 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/1 1t

scoreboard players set #cutscene.opening.force_execution.10.1 global.main 1
particle minecraft:explosion_emitter 10032 -51 9436 1 1 1 0 100 force @a

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/10/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]