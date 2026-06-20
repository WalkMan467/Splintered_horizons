execute \
    unless score #cutscene.opening.force_execution.9.0 global.main matches 1.. run \
return 0

forceload add 9999 10060
forceload add 9999 10065
forceload add 9999 10069

execute \
    positioned 9999 93 10065 \
    as @e[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
function aj:aska/remove/this

execute \
    positioned 9999 95 10060 \
    as @e[sort=arbitrary,tag=aj.kyle.root,distance=..1,type=item_display] run \
function aj:kyle/remove/this

kill e417358e-1d37-439a-b927-f3b6b04fa873

execute \
    unless loaded 9999 0 10065 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

execute \
    unless loaded 9999 0 10060 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

execute \
    unless loaded 9999 0 10069 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

execute \
    positioned 9999 93 10065 \
    if entity @n[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

execute \
    positioned 9999 95 10060 \
    if entity @n[sort=arbitrary,tag=aj.kyle.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

execute \
    if entity e417358e-1d37-439a-b927-f3b6b04fa873 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/0 1t

scoreboard players reset #cutscene.opening.force_execution.9.0 global.main

forceload remove 9999 10060
forceload remove 9999 10065
forceload remove 9999 10069

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/9/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]