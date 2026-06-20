execute \
    unless score #cutscene.world_tree.force_execution.2.0 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 run \
forceload add ~ ~

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    as @n[sort=arbitrary,distance=..10,tag=aj.stellar.root,type=item_display] at @s run \
function aj:stellar/remove/this

execute \
    in world_area:main/game_lobby \
    unless loaded 16683 60 263 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/2/0 1t

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    if entity @n[sort=arbitrary,distance=..0.1,tag=aj.stellar.root,type=item_display] run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/2/0 1t

scoreboard players reset #cutscene.world_tree.force_execution.2.0 global.main

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 run \
forceload remove ~ ~

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/remove/2/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]