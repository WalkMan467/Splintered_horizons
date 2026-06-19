# ===================================================
# Initialize Spectator Mode

    ## Guide [ function cutscene:world_tree/0/0 ] >>> Initialize Spectator Mode
    ## Guide [ function cutscene:world_tree/0/use ] >>> World Tree Cutscene Playing

# ===================================================

schedule clear cutscene:world_tree/0/walking/1
schedule clear cutscene:world_tree/0/walking/play

data modify entity 880ac6a7-143c-4e06-a68d-7eefae1c37a9 teleport_duration set value 59

schedule function cutscene:world_tree/0/1 1t