execute \
    if score #cutscene.opening.force_execution.10.0 global.main matches 1.. run \
return 0

forceload add 1076 -171

execute \
    positioned 10040 150 9434 rotated -90 0 run \
function animated_java:sophia/summon {args: {animation: 'cutscene_opening_death', start_animation: true}}

execute \
    positioned 10040 150 9434 rotated 0 0 run \
function aj:fsc_fx/summon {args: {animation: 'run', start_animation: true}}

execute \
    unless loaded 10040 0 9434 run \
    return run \
schedule function cutscene:opening/force_execution/summon/10/0 1t

execute \
    positioned 10040 150 9434 \
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