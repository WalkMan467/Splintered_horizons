execute \
    if entity @s[tag=weapon.lost.return] run \
return 0

execute \
    as @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/2,type=item] run \
    return run \
function sys:monument_point/objective_item/glowing

execute \
    store result score #weapon.silvaverdis.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"silvaverdis"}] 0

execute \
    if score #weapon.silvaverdis.count global.main matches 1.. run \
return 0

execute \
    unless score #weapons:monument/area_2 global.main matches 1.. run \
return 0

execute \
    unless score #objective_item.2 global.main matches 1.. \
    as @s[tag=!weapon.lost.return,gamemode=!creative] at @s run \
function sys:monument_point/objective_item/lost_tips