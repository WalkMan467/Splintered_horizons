dialog clear @s

tag @s remove weapon.aquilumera.clear

execute \
    unless score #weapons:monument/area_1 global.main matches 1.. run \
    return run \
function players:setting/recover_lost_objective_items/failure/1

execute \
    store result score #weapon.aquilumera.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"aquilumera"}] 0

execute \
    if entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/1,type=item] run \
    return run \
function players:setting/recover_lost_objective_items/failure/2

execute \
    if score #weapon.aquilumera.count global.main matches 1.. run \
    return run \
function players:setting/recover_lost_objective_items/failure/2

function weapons:get/monument/area_1