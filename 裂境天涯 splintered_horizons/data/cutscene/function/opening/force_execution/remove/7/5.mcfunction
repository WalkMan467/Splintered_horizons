execute \
    unless score #cutscene.opening.force_execution.7.5 global.main matches 1.. run \
return 0

forceload add 199 -411

kill 42b1bd22-0f5b-4538-ae77-8dea62a30678

execute \
    unless loaded 199 0 -411 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/5 1t

execute \
    if entity 42b1bd22-0f5b-4538-ae77-8dea62a30678 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/5 1t

scoreboard players reset #cutscene.opening.force_execution.7.5 global.main

forceload remove 199 -411

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/7/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]