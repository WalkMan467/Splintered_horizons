
execute \
    as @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/1,type=item] run \
    return run \
function sys:monument_point/objective_item/glowing

execute \
    if entity @s[tag=weapon.lost.return] run \
return 0

execute \
    store result score #weapon.aquilumera.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"aquilumera"}] 0

execute \
    if score #weapon.aquilumera.count global.main matches 1.. run \
return 0

execute \
    unless score #weapons:monument/area_1 global.main matches 1.. run \
return 0

execute \
    unless score #objective_item.1 global.main matches 1.. \
    as @s[tag=!weapon.lost.return,gamemode=!creative] at @s run \
function sys:monument_point/objective_item/lost_tips