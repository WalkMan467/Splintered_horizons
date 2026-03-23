execute \
    unless score #cutscene.opening.force_execution.8.1 global.main matches 1.. run \
return 0

forceload add -7 -58
forceload add 5 -52

kill f4bf3316-e54c-455d-8ca7-8025a7df5ade


execute \
    positioned 5 64 -52 \
    as @e[sort=arbitrary,tag=aj.oceanid.root,distance=..1,type=item_display] run \
function animated_java:oceanid/remove/this

execute \
    unless loaded 5 64 -52 run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/1 1t

execute \
    unless loaded -7 0 -58 run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/1 1t

execute \
    positioned 5 64 -52 \
    if entity @n[sort=arbitrary,tag=aj.oceanid.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/1 1t

execute \
    if entity f4bf3316-e54c-455d-8ca7-8025a7df5ade run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/1 1t

scoreboard players reset #cutscene.opening.force_execution.8.1 global.main

forceload remove -7 -58
forceload remove 5 -52

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/8/1>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]