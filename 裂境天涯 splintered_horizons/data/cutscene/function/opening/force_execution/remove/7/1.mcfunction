execute \
    unless score #cutscene.opening.force_execution.7.1 global.main matches 1.. run \
return 0

forceload add 718 731

kill e300f2c0-b0f4-4ce1-b0a3-1f351104db20

execute \
    unless loaded 718 0 731 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/1 1t

execute \
    if entity e300f2c0-b0f4-4ce1-b0a3-1f351104db20 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/1 1t

scoreboard players reset #cutscene.opening.force_execution.7.1 global.main

forceload remove 718 731
forceload remove 670 762 849 519

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/7/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]