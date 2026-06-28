# ===================================================
# World Tree Cutscene Playing

    ## Guide [ function cutscene:world_tree/2/use ] >>> Camera shot 5

# ===================================================

scoreboard players set #cutscene.world_tree global.main 6

execute \
    as @a[sort=arbitrary,gamemode=spectator] at @s run \
spectate @n[sort=arbitrary,distance=..10,tag=aj.stellar.camera.camera1,type=item_display]

schedule function cutscene:world_tree/2/0 1t
schedule function cutscene:world_tree/2/1 8s
schedule function cutscene:world_tree/2/2 9.1s
schedule function cutscene:world_tree/2/3 10s
schedule function cutscene:world_tree/2/4 12.1s