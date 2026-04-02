execute \
    if score #cutscene.opening.force_execution.10.0 global.main matches 1.. run \
return 0

forceload add 1076 -171

execute \
    positioned 1076 121 -171 rotated 30 0 run \
function animated_java:sophia/summon {args: {animation: 'cutscene_opening_death', start_animation: true}}

execute \
    unless loaded 1076 0 -171 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/0 1t

execute \
    positioned 1076 121 -171 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.sophia.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/0 1t

scoreboard players set #cutscene.opening.force_execution.10.0 global.main 1

schedule function cutscene:opening/force_execution/remove/10/0 15.1s

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/10/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]