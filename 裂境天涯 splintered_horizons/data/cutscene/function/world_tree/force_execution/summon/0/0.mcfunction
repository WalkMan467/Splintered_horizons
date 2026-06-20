execute \
    if score #cutscene.world_tree.force_execution.0.0 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16682 60 229 run \
forceload add ~ ~

# 880ac6a7-143c-4e06-a68d-7eefae1c37a9
# Math Marker = 5e872217-eb7b-4a9f-92f4-db13079f9daa
execute \
    in world_area:main/game_lobby run \
summon minecraft:block_display 16684.0 61.5 235.0 {Passengers:[{id:"marker",UUID:[I;1585914391,-344241505,-1829446893,127901098]}],UUID:[I;-2012559705,339496454,-1500676369,-1373882455],Rotation:[160.0f,0.0f],Tags:["cutscene.world_tree.0"],teleport_duration:5,block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

execute \
    in world_area:main/game_lobby \
    positioned 16683.0 60.0 233.0 \
    rotated 0 0 run \
function aj:stellar/summon {args:{animation: 'cutscene_world_tree_0', start_animation: true}}

execute \
    in world_area:main/game_lobby \
    unless loaded 16682 60 229 run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/0/0 1t

execute \
    unless entity 880ac6a7-143c-4e06-a68d-7eefae1c37a9 run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/0/0 1t


execute \
    in world_area:main/game_lobby \
    positioned 16683.0 60.0 233.0 \
    unless entity @n[sort=arbitrary,distance=..0.1,tag=aj.stellar.root,type=item_display] at @s run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/0/0 1t

scoreboard players set #cutscene.world_tree.force_execution.0.0 global.main 1

schedule function cutscene:world_tree/0/0 1t

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/summon/0/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]