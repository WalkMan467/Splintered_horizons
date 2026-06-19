execute \
    unless score #cutscene.world_tree.force_execution.1.0 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 run \
forceload add ~ ~

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    as @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] at @s run \
function animated_java:stellar/remove/this

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    as @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] at @s run \
function animated_java:stellar/remove/this

execute \
    as 49afb5aa-1871-41a5-af69-1d79fc856293 \
    on passengers run \
kill @s

kill 49afb5aa-1871-41a5-af69-1d79fc856293

execute \
    if entity 49afb5aa-1871-41a5-af69-1d79fc856293 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/1/0 1t

execute \
    in world_area:main/game_lobby \
    unless loaded 16683 60 263 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/1/0 1t

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    if entity @n[sort=arbitrary,distance=..0.1,tag=animated_java.stellar.root,type=item_display] run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/1/0 1t

scoreboard players reset #cutscene.world_tree.force_execution.1.0 global.main

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 run \
forceload remove ~ ~

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/remove/1/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]