execute \
    if score #cutscene.opening.force_execution.5.0 global.main matches 1.. run \
return 0

forceload add 9872 10351
forceload add 9872 10346

execute \
    in minecraft:overworld \
    positioned 9872 104 10351 rotated 0 0 run \
function animated_java:aska/summon {args: {animation: 'idle', start_animation: true}}

# 0004e721-0004-e663-0000-198fffff5b77
execute \
    in minecraft:overworld run \
summon minecraft:block_display 9872.50 106.49 10346.50 {UUID:[I;321313,321123,6543,-42121],start_interpolation:30,teleport_duration:59,Rotation:[0.0f,30.0f],Tags:["cutscene.opening.5"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 9872 0 10346 run \
    return run \
schedule function cutscene:opening/force_execution/summon/5/0 1t

execute \
    unless loaded 9872 0 10351 run \
    return run \
schedule function cutscene:opening/force_execution/summon/5/0 1t

execute \
    positioned 9872 104 10351 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.aska.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/5/0 1t

scoreboard players set #cutscene.opening.force_execution.5.0 global.main 1

schedule function cutscene:opening/5/0_1 1.5s

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/5/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]