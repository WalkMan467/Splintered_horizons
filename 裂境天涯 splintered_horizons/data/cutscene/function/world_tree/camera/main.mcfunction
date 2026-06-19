# ===================================================
# Camera Loop

    ## Guide [ function cutscene:world_tree/camera/main ] >>> Camera Loop
    ## Guide [ function cutscene:world_tree/camera/guide ] >>> Camera storyboard

# ===================================================

execute \
    unless score #cutscene.world_tree global.main matches 1.. run \
return 0

scoreboard players add #cutscene.world_tree.timer global.main 1

gamemode spectator @a[tag=!spectator,tag=!cutscene.world_tree.camera.reset,tag=cutscene.world_tree]

tag @a[gamemode=spectator,tag=!cutscene.world_tree] add cutscene.world_tree.camera.reset

execute \
    as @a[tag=cutscene.world_tree.camera.reset,tag=cutscene.world_tree] at @s run \
function cutscene:world_tree/update_camera/1

execute \
    as @a[gamemode=spectator,tag=!cutscene.world_tree.camera.reset,tag=cutscene.world_tree] at @s run \
function cutscene:world_tree/camera/guide

tag @a add cutscene.world_tree

execute \
    if score #cutscene.world_tree.timer global.main < #cutscene.world_tree.timeline.end global.main run \
    return run \
schedule function cutscene:world_tree/camera/main 1t

# End

title @a times 0 100 40
title @a title {"text":"\uE000","color":"white","font":"minecraft:screen"}
title @a subtitle ""

function cutscene:world_tree/stop

execute \
    in world_area:main/game_lobby run \
tp @a 16684 31 270

schedule function cutscene:opening/0/title/use 1t