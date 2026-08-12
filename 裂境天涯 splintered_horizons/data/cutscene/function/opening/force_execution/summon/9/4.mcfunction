execute \
    if score #cutscene.opening.force_execution.9.4 global.main matches 1.. run \
return 0

forceload add 803 1590

# ecad9f35-97af-445d-b5b5-994d25510122

execute \
    in minecraft:overworld \
    positioned 802 71 1592 \
    rotated 206.50 0.00 run \
function aj:selena/summon {args: {animation: 'chat1', start_animation: true}}

execute \
    in minecraft:overworld \
    rotated 26.5 0 run \
summon minecraft:block_display 803 72.5 1590 {start_interpolation:1,interpolation_duration:1,teleport_duration:1,UUID:[I;-324165835,-1750121379,-1246389939,626065698],Rotation:[26.5f,0.0f],Tags:["cutscene.opening.9.4"],block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 803 0 1590 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/4 1t

execute \
    positioned 802 71 1592 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/4 1t

execute \
    unless entity ecad9f35-97af-445d-b5b5-994d25510122 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/4 1t

scoreboard players set #cutscene.opening.force_execution.9.4 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/9/4>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]