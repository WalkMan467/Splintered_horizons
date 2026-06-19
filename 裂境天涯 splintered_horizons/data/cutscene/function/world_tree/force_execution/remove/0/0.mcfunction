execute \
    unless score #cutscene.world_tree.force_execution.0.0 global.main matches 1.. run \
return 0

execute \
    in world_area:main/game_lobby \
    positioned 16682 60 229 run \
forceload add ~ ~

kill 880ac6a7-143c-4e06-a68d-7eefae1c37a9
kill 5e872217-eb7b-4a9f-92f4-db13079f9daa

execute \
    in world_area:main/game_lobby \
    positioned 16683.0 60.0 233.0 \
    as @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] at @s run \
function animated_java:stellar/remove/this

execute \
    in world_area:main/game_lobby \
    positioned 16683 60 263 \
    as @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] at @s run \
function animated_java:stellar/remove/this

execute \
    in world_area:main/game_lobby \
    unless loaded 16682 60 229 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/0/0 1t

execute \
    if entity 880ac6a7-143c-4e06-a68d-7eefae1c37a9 run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/0/0 1t

execute \
    in world_area:main/game_lobby \
    positioned 16683.0 60.0 233.0 \
    if entity @n[sort=arbitrary,distance=..0.1,tag=animated_java.stellar.root,type=item_display] run \
    return run \
schedule function cutscene:world_tree/force_execution/remove/0/0 1t

scoreboard players reset #cutscene.world_tree.force_execution.0.0 global.main

execute \
    in world_area:main/game_lobby \
    positioned 16682 60 229 run \
forceload remove ~ ~

tellraw @a[tag=sys.debug.log] \
    [ \
        {"text":"<cutscene:world_tree/force_execution/remove/0/0>","color": "yellow"}, \
        {"text":": ","color": "white"},{"text":"remove done!","color": "dark_green"} \
    ]