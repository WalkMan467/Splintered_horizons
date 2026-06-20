execute \
    if score #cutscene.opening.force_execution.9.0 global.main matches 1.. run \
return 0

forceload add 9999 10065
forceload add 9999 10060
forceload add 9999 10069

# e417358e-1d37-439a-b927-f3b6b04fa873
execute \
    in minecraft:overworld run \
summon minecraft:block_display 9999 95 10069 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-468241010, 490161050,-1188564042,-1336956813],Rotation:[180.0f,12.0f],Tags:["cutscene.opening.8.1"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    positioned 9999 93 10065 rotated 180 0 run \
function aj:aska/summon {args: {animation: 'idle', start_animation: true}}

execute \
    positioned 9999 95 10060 rotated 0 0 run \
function aj:kyle/summon {args: {animation: 'idle', start_animation: true}}

execute \
    unless loaded 9999 0 10065 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/0 1t

execute \
    unless loaded 9999 0 10060 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/0 1t

execute \
    positioned 9999 93 10065 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.aska.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/0 1t

execute \
    positioned 9999 95 10060 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.kyle.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/0 1t

scoreboard players set #cutscene.opening.force_execution.9.0 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/9/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]