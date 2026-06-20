# ===================================================
# World Tree Cutscene Playing

    ## Guide [ function cutscene:world_tree/1/use ] >>> Camera shot 1

# ===================================================


scoreboard players set #cutscene.world_tree global.main 2

# Remove Camera
kill 880ac6a7-143c-4e06-a68d-7eefae1c37a9
kill 5e872217-eb7b-4a9f-92f4-db13079f9daa

execute \
    as @a[sort=arbitrary,gamemode=spectator] at @s run \
spectate @n[sort=arbitrary,distance=..10,tag=aj.stellar.camera.camera,type=item_display]

schedule function cutscene:world_tree/1/0 1s
schedule function cutscene:world_tree/force_execution/remove/0/0 2.5s
schedule function cutscene:world_tree/1/1 2s
schedule function cutscene:world_tree/1/2 3s
schedule function cutscene:world_tree/1/3 4s
schedule function cutscene:world_tree/1/4 8s
schedule function cutscene:world_tree/1/5 12s
schedule function cutscene:world_tree/force_execution/remove/1/0 330t
schedule function cutscene:world_tree/force_execution/remove/1/5 330t
schedule function cutscene:world_tree/1/6 17s