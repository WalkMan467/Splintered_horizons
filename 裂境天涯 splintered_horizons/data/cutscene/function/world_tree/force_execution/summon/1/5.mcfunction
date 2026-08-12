execute \
    if score #cutscene.world_tree.force_execution.1.5 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16684 31 270 run \
forceload add ~ ~

# a98a99c1-535d-4b22-972a-4a4c27543d17
execute \
    in world_area:main/game_lobby run \
summon minecraft:block_display 16684 31 270 {UUID:[I;-1450534463,1398623010,-1758836148,659832087],Rotation:[0.0f,0.0f],teleport_duration:1,block_state: {id: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    in world_area:main/game_lobby \
    unless loaded 16684 31 270 run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/1/5 1t

execute \
    unless entity a98a99c1-535d-4b22-972a-4a4c27543d17 run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/1/5 1t

scoreboard players set #cutscene.world_tree.force_execution.1.5 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/summon/1/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]