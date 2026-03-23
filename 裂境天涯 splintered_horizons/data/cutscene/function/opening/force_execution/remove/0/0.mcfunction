execute \
    unless score #cutscene.opening.force_execution.0.0 global.main matches 1.. run \
return 0

forceload add 9999 10070

kill 0004e729-0004-e663-0000-198fffff5b77

execute \
    unless loaded 9999 0 10070 run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/0 1t

execute \
    if entity 0004e729-0004-e663-0000-198fffff5b77 run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/0 1t

scoreboard players reset #cutscene.opening.force_execution.0.0 global.main

forceload remove 9999 10070

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/0/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]