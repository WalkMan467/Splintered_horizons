execute \
    unless score #cutscene.opening.force_execution.7.3 global.main matches 1.. run \
return 0

forceload add 789 137

kill 84af3c39-ba24-43ca-94e3-42c0c2f93aca

execute \
    unless loaded 789 0 137 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/3 1t

execute \
    if entity 84af3c39-ba24-43ca-94e3-42c0c2f93aca run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/3 1t

scoreboard players reset #cutscene.opening.force_execution.7.3 global.main

forceload remove 789 137

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/7/3>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]