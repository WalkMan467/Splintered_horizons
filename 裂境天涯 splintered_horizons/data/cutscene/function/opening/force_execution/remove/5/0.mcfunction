execute \
    unless score #cutscene.opening.force_execution.5.0 global.main matches 1.. run \
return 0

forceload add 9872 10351
forceload add 9872 10346

kill 0004e721-0004-e663-0000-198fffff5b77

execute \
    positioned 9872 104 10351 \
    as @e[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
function aj:aska/remove/this

execute \
    unless loaded 9872 0 10351 run \
    return run \
schedule function cutscene:opening/force_execution/remove/5/0 1t

execute \
    positioned 9872 104 10351 \
    if entity @n[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/5/0 1t

execute \
    if entity 0004e721-0004-e663-0000-198fffff5b77 run \
    return run \
schedule function cutscene:opening/force_execution/remove/5/0 1t

scoreboard players reset #cutscene.opening.force_execution.5.0 global.main
schedule clear cutscene:opening/force_execution/summon/5/0

forceload remove 9872 10351
forceload remove 9872 10346

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/5/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]