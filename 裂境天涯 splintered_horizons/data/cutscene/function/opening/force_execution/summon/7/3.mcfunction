

forceload add 789 137

# 84af3c39-ba24-43ca-94e3-42c0c2f93aca

execute \
    in minecraft:overworld run \
summon minecraft:block_display 789 210 137 {start_interpolation:1,interpolation_duration:59,teleport_duration:59,UUID:[I;-2068890567,-1172028470,-1797045568,-1023853878],Rotation:[-20.5f,10.0f],Tags:["cutscene.opening.7.3"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    unless loaded 789 0 137 run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/3 1t

execute \
    unless entity 84af3c39-ba24-43ca-94e3-42c0c2f93aca run \
    return run \
schedule function cutscene:opening/force_execution/summon/7/3 1t

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:opening/force_execution/summon/7/3>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]