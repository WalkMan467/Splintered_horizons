# ===================================================
# World Tree Cutscene Playing

    ## Guide [ function cutscene:world_tree/0/use ] >>> World Tree Cutscene Playing
    ## Guide [ function cutscene:world_tree/0/0 ] >>> Initialize Spectator Mode

# ===================================================


scoreboard players set #cutscene.world_tree.timer global.main 0
scoreboard players set #cutscene.world_tree global.main 1

schedule function cutscene:world_tree/force_execution/summon/0/0 1t

schedule function cutscene:world_tree/1/use 6s