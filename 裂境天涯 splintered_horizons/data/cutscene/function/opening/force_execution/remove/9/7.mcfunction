execute \
    unless score #cutscene.opening.force_execution.9.7 global.main matches 1.. run \
return 0

forceload add 51 -438

kill 99024724-ce00-452f-9a3b-c5762fd7f03a

execute \
    unless loaded 51 43 -438 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/7 1t

execute \
    if entity 99024724-ce00-452f-9a3b-c5762fd7f03a run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/7 1t

scoreboard players reset #cutscene.opening.force_execution.9.7 global.main

forceload remove 51 -438
schedule clear cutscene:opening/force_execution/summon/9/7

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/9/7>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]