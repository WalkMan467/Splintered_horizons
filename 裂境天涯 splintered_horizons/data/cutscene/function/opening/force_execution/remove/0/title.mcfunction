execute \
    unless score #cutscene.opening.force_execution.0.title global.main matches 1.. run \
return 0

forceload add 9999 10070

kill 000000d3-0000-0004-0000-000100000001

execute \
    unless loaded 9999 0 10070 run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/title 1t

execute \
    if entity 000000d3-0000-0004-0000-000100000001 run \
    return run \
schedule function cutscene:opening/force_execution/remove/0/title 1t

scoreboard players reset #cutscene.opening.force_execution.0.title global.main

forceload remove 9999 10070
schedule clear cutscene:opening/force_execution/summon/0/title

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/0/title>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]