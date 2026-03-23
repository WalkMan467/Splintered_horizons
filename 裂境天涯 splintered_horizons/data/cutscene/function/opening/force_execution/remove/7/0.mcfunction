execute \
    unless score #cutscene.opening.force_execution.7.0 global.main matches 1.. run \
return 0

forceload add 718 731
forceload add 1028 -129
forceload add 1027 -129
forceload add 1026 -130

execute \
    positioned 1026 136 -130 \
    as @e[sort=arbitrary,tag=aj.stellar_animation.root,distance=..1,type=item_display] run \
function animated_java:stellar_animation/remove/this

execute \
    positioned 1028 136 -129 \
    as @e[sort=arbitrary,tag=aj.sophia.root,distance=..1,type=item_display] run \
function animated_java:sophia/remove/this

execute \
    positioned 1027.25 136 -128.5 \
    as @e[sort=arbitrary,tag=aj.isokla.root,distance=..1,type=item_display] run \
function animated_java:isokla/remove/this

kill 89e87545-f962-49b3-a510-a7da8d3f226d

execute \
    unless loaded 1026 0 -130 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/0 1t

execute \
    unless loaded 1028 0 -129 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/0 1t

execute \
    unless loaded 1027 0 -129 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/0 1t

execute \
    unless loaded 718 0 731 run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/0 1t

execute \
    if entity 89e87545-f962-49b3-a510-a7da8d3f226d run \
    return run \
schedule function cutscene:opening/force_execution/remove/7/0 1t

scoreboard players reset #cutscene.opening.force_execution.7.0 global.main

forceload remove 718 731
forceload remove 1028 -129
forceload remove 1027 -129
forceload remove 1026 -130

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/7/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]