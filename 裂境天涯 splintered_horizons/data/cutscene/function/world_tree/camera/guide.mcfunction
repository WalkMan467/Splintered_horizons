# ===================================================
# Camera storyboard

    ## Guide [ function cutscene:world_tree/camera/guide ] >>> Camera storyboard
    ## Guide [ function cutscene:world_tree/camera/main ] >>> Camera Loop

# ===================================================

execute \
    unless score #cutscene.world_tree global.main matches 1.. run \
return 0

gamemode spectator @s[gamemode=!spectator]
tag @s remove cutscene.world_tree.camera.reset

execute \
    if score #cutscene.world_tree global.main matches 1 run \
    return run \
spectate 880ac6a7-143c-4e06-a68d-7eefae1c37a9

execute \
    if score #cutscene.world_tree global.main matches 2 run \
    return run \
spectate @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.camera.camera,type=item_display]

execute \
    if score #cutscene.world_tree global.main matches 3 run \
    return run \
spectate @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.camera.camera3,type=item_display]

execute \
    if score #cutscene.world_tree global.main matches 4 run \
    return run \
spectate a98a99c1-535d-4b22-972a-4a4c27543d17

execute \
    if score #cutscene.world_tree global.main matches 5 run \
    return run \
spectate @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.camera.camera3,type=item_display]

execute \
    if score #cutscene.world_tree global.main matches 6 run \
    return run \
spectate @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.camera.camera,type=item_display]

execute \
    if score #cutscene.world_tree global.main matches 7 run \
    return run \
spectate @n[sort=arbitrary,distance=..10,tag=animated_java.stellar.camera.camera3,type=item_display]
