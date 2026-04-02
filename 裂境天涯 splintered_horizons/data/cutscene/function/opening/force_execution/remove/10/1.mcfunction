execute \
    unless score #cutscene.opening.force_execution.10.1 global.main matches 1.. run \
return 0

forceload add 1063 -190 1062 -185

kill 8b61e851-f0af-4fc7-b218-74f1a426cf25
fill 1052 253 -185 1070 240 -185 air

scoreboard players reset #retrun global.main
execute \
    store result score #retrun global.main run \
forceload query 1052 -185

execute \
    if score #retrun global.main matches 1.. run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

execute \
    if entity 8b61e851-f0af-4fc7-b218-74f1a426cf25 run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

scoreboard players reset #cutscene.opening.force_execution.10.1 global.main

forceload remove 1063 -190 1062 -185

schedule clear cutscene:opening/force_execution/summon/10/1
scoreboard players reset #retrun global.main

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/10/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]