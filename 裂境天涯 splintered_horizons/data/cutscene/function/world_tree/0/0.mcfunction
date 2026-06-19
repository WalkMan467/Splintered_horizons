# ===================================================
# Initialize Spectator Mode

    ## Guide [ function cutscene:world_tree/0/0 ] >>> Initialize Spectator Mode
    ## Guide [ function cutscene:world_tree/0/use ] >>> World Tree Cutscene Playing

# ===================================================

gamemode spectator @a

execute \
    as @a run \
spectate 880ac6a7-143c-4e06-a68d-7eefae1c37a9

schedule function cutscene:world_tree/0/walking/play 1t

schedule function cutscene:world_tree/0/walking/stop 3s