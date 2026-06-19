execute \
    unless score #cutscene.opening.force_execution.9.5 global.main matches 1.. run \
return 0

forceload add 651 188

kill c8338abd-faa8-427b-807e-1bbbfac9a67e

execute \
    positioned 651 40 188 \
    as @e[sort=arbitrary,tag=aj.selena.root,distance=..1,type=item_display] run \
function aj:selena/remove/this

execute \
    unless loaded 651 40 188 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/5 1t

execute \
    unless loaded 651 43 188 run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/5 1t

execute \
    if entity c8338abd-faa8-427b-807e-1bbbfac9a67e run \
    return run \
schedule function cutscene:opening/force_execution/remove/9/5 1t

scoreboard players reset #cutscene.opening.force_execution.9.5 global.main

forceload remove 651 188
schedule clear cutscene:opening/force_execution/summon/9/5

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/9/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]