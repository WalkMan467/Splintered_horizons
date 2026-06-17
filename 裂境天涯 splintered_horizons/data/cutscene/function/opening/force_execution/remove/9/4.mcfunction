execute \
    unless score #cutscene.opening.force_execution.9.4 global.main matches 1.. run \
return 0

forceload add 803 1590

kill ecad9f35-97af-445d-b5b5-994d25510122

execute \
    positioned 802 71 1592 \
    as @e[sort=arbitrary,tag=aj.selena.root,distance=..1,type=item_display] run \
function animated_java:selena/remove/this

execute \
    unless loaded 802 71 1592 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/4 1t

execute \
    unless loaded 803 0 1590 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/4 1t

execute \
    positioned 802 70 1592 \
    if entity @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/4 1t

execute \
    if entity ecad9f35-97af-445d-b5b5-994d25510122 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/4 1t

scoreboard players reset #cutscene.opening.force_execution.9.4 global.main

forceload remove 803 1590
schedule clear cutscene:opening/force_execution/summon/9/4

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/9/4>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]