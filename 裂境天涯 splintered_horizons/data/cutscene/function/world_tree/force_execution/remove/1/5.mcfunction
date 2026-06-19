execute \
    unless score #cutscene.world_tree.force_execution.1.5 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16684 31 270 run \
forceload add ~ ~

kill a98a99c1-535d-4b22-972a-4a4c27543d17

execute \
    in world_area:main/game_lobby \
    unless loaded 16684 31 270 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/1/5 1t

execute \
    if entity a98a99c1-535d-4b22-972a-4a4c27543d17 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/1/5 1t

scoreboard players reset #cutscene.world_tree.force_execution.1.5 global.main

execute \
    in world_area:main/game_lobby \
    positioned 16684 31 270 run \
forceload remove ~ ~

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/remove/1/5>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]