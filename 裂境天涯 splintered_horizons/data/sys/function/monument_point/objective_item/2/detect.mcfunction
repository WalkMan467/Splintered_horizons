tag @a remove weapon.silvaverdis.clear

execute \
    as @a \
    if score @s weapon.silvaverdis.count matches 1.. run \
tag @s remove weapon.silvaverdis.return

tag @a[gamemode=creative] remove weapon.silvaverdis.return

execute \
    store result score $index weapon.silvaverdis.count run \
clear @a *[minecraft:custom_data~{weapon:"silvaverdis"}] 0

execute \
    unless score $index weapon.silvaverdis.count matches 2.. run \
return 0

execute \
    as @a \
    store result score @s weapon.silvaverdis.count run \
clear @s *[minecraft:custom_data~{weapon:"silvaverdis"}] 0

execute \
    as @a \
    if score @s weapon.silvaverdis.count matches 1.. run \
function sys:monument_point/objective_item/2/clear