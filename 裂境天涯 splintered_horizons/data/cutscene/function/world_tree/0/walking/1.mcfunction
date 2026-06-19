# ===================================================
# Initialize Spectator Mode

    ## Guide [ function cutscene:world_tree/0/0 ] >>> Initialize Spectator Mode
    ## Guide [ function cutscene:world_tree/0/use ] >>> World Tree Cutscene Playing

# ===================================================

execute \
    in world_area:main/game_lobby \
    positioned 16683.0 60.0 233.0 \
    as @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] at @s run \
tp @s ^ ^ ^0.025

execute \
    as 880ac6a7-143c-4e06-a68d-7eefae1c37a9 at @s \
    facing entity @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.root,type=item_display] feet run \
rotate @s ~ 0