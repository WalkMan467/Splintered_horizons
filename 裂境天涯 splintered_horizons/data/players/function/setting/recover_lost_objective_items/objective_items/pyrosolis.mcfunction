dialog clear @s

tag @s remove weapon.pyrosolis.clear

execute \
    unless score #weapons:monument/area_3 global.main matches 1.. run \
    return run \
function players:setting/recover_lost_objective_items/failure/1

execute \
    store result score #weapon.pyrosolis.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"pyrosolis"}] 0

execute \
    if entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/3,type=item] run \
    return run \
function players:setting/recover_lost_objective_items/failure/2

execute \
    if score #weapon.pyrosolis.count global.main matches 1.. run \
    return run \
function players:setting/recover_lost_objective_items/failure/2

function weapons:get/monument/area_3