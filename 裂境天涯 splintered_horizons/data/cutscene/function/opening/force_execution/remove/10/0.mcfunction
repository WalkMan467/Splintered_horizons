execute \
    unless score #cutscene.opening.force_execution.10.0 global.main matches 1.. run \
return 0

forceload add 1076 -171

execute \
    positioned 1076 121 -171 \
    as @e[sort=arbitrary,tag=aj.sophia.root,distance=..1,type=item_display] run \
function animated_java:sophia/remove/this

execute \
    positioned 1076 121 -171 \
    as @e[sort=arbitrary,tag=aj.fsc_fx.root,distance=..1,type=item_display] run \
function animated_java:fsc_fx/remove/this

execute \
    unless loaded 1076 0 -171 run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/0 1t

execute \
    positioned 1076 121 -171 \
    if entity @n[sort=arbitrary,tag=aj.sophia.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/10/0 1t

scoreboard players reset #cutscene.opening.force_execution.10.0 global.main

forceload remove 1076 -171

schedule clear cutscene:opening/force_execution/summon/10/0
stopsound @a voice minecraft:cutscene.opening.sophia_death

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/10/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]