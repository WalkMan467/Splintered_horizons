execute \
    unless score #cutscene.opening.force_execution.8.0 global.main matches 1.. run \
return 0

forceload add 9820 10137

execute \
    positioned 9820 81 10137 \
    as @e[sort=arbitrary,tag=aj.oceanid.root,distance=..1,type=item_display] run \
function aj:oceanid/remove/this

execute \
    unless loaded 9820 0 10137 run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/0 1t

execute \
    positioned 9820 81 10137 \
    if entity @n[sort=arbitrary,tag=aj.oceanid.root,distance=..1,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/remove/8/0 1t

scoreboard players reset #cutscene.opening.force_execution.8.0 global.main

forceload remove 9820 10137
forceload remove 9822 10148 9725 10106

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/remove/8/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]