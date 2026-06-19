
execute \
    unless score #cutscene.world_tree global.main matches 1.. run \
return 0

tag @s add cutscene.world_tree.camera.reset
tag @s remove cutscene.world_tree

function cutscene:world_tree/update_camera/1