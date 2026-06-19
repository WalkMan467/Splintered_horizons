execute \
    if score #cutscene.opening.force_execution.9.5 global.main matches 1.. run \
return 0

forceload add 651 188

# c8338abd-faa8-427b-807e-1bbbfac9a67e

execute \
    in minecraft:overworld \
    positioned 651 40 188 \
    rotated 0 -25.00 run \
function aj:selena/summon {args: {animation: 'death', start_animation: true}}

execute \
    in minecraft:overworld \
    rotated 180 60 run \
summon minecraft:block_display 651 43 188 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-936146243,-89636229,-2139219013,-87447938],Rotation:[180.0f,60.0f],Tags:["cutscene.opening.9.5"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 651 43 188 run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/5 1t

execute \
    positioned 651 40 188 \
    unless entity @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/5 1t

execute \
    unless entity c8338abd-faa8-427b-807e-1bbbfac9a67e run \
    return run \
schedule function cutscene:opening/force_execution/summon/9/5 1t

scoreboard players set #cutscene.opening.force_execution.9.5 global.main 1

schedule function cutscene:opening/9/6 1t

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/9/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]