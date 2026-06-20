execute \
    if score #cutscene.opening.force_execution.8.0 global.main matches 1.. run \
return 0

forceload add 9820 10137

execute \
    in minecraft:overworld \
    positioned 9820 81 10137 rotated -90 0 run \
function aj:oceanid/summon {args: {animation: '2', start_animation: true}}

execute \
    unless loaded 9820 0 10137 run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/0 1t

execute \
    positioned 9820 81 10137 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.oceanid.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/8/0 1t

scoreboard players set #cutscene.opening.force_execution.8.0 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/8/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]

schedule function cutscene:opening/force_execution/remove/8/0 4s