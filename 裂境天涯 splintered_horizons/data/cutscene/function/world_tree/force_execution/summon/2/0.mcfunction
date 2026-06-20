execute \
    if score #cutscene.world_tree.force_execution.2.0 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 run \
forceload add ~ ~

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    rotated 0 0 run \
function aj:stellar/summon {args:{animation: 'cutscene_world_tree_2', start_animation: true}}

execute \
    in world_area:main/game_lobby \
    unless loaded 16683 60 263 run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/2/0 1t

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    unless entity @n[sort=arbitrary,distance=..0.1,tag=aj.stellar.root,type=item_display] at @s run \
    return run \
schedule function cutscene:world_tree/force_execution/summon/2/0 1t

scoreboard players set #cutscene.world_tree.force_execution.2.0 global.main 1

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/summon/2/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"summon done!","color": "dark_green"} \
    ]