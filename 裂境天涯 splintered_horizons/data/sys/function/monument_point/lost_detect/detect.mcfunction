tag @a remove weapon.aquilumera.return

execute \
    if entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/1,type=item] run \
return 1

execute \
    if entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/2,type=item] run \
return 2

execute \
    if entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/3,type=item] run \
return 3

execute \
    store result score #weapon.aquilumera.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"aquilumera"}] 0

execute \
    if score #weapons:monument/area_1 global.main matches 1.. \
    unless score #weapon.aquilumera.count global.main matches 1.. run \
    return run \
function sys:monument_point/objective_item/1/return/guide

execute \
    if score #weapons:monument/area_1 global.main matches 1.. run \
return 5

execute \
    unless score #objective_item.1 global.main matches 1.. \
    as @a[tag=!weapon.aquilumera.return,gamemode=!creative] at @s run \
function sys:monument_point/objective_item/1/return/guide