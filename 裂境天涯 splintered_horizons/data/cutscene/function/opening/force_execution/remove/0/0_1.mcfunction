execute \
    unless score #cutscene.opening.force_execution.0.0_1 global.main matches 1.. run \
return 0

forceload add 10180 10100

kill 0004e729-0004-e663-0000-198fffffcfdf

execute \
    unless loaded 10180 0 10100 run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/0_1 1t

execute \
    if entity 0004e729-0004-e663-0000-198fffffcfdf run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/0_1 1t

scoreboard players reset #cutscene.opening.force_execution.0.0_1 global.main

forceload remove 10180 10100

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/0/0_1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]