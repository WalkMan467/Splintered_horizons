execute \
    unless score #cutscene.opening.force_execution.10.1 global.main matches 1.. run \
return 0

forceload add 10047 9443 10019 9443
forceload add 10032 9436

kill 8b61e851-f0af-4fc7-b218-74f1a426cf25
fill 10047 -59 9443 10019 -39 9443 air

scoreboard players reset #retrun global.main
execute \
    store result score #retrun global.main run \
forceload query 10047 9443

execute \
    unless score #retrun global.main matches 1.. run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

execute \
    unless loaded 10019 0 9443 run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

execute \
    unless loaded 10047 0 9443 run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

execute \
    if entity 8b61e851-f0af-4fc7-b218-74f1a426cf25 run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/1 1t

scoreboard players reset #cutscene.opening.force_execution.10.1 global.main

forceload remove 10047 9443 10019 9443
forceload remove 10032 9436

schedule clear cutscene:opening/force_execution/summon/10/1
scoreboard players reset #retrun global.main

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/10/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]