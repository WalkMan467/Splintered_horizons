execute \
    if entity @n[sort=arbitrary,predicate=weapons:type/sword/aquilumera/detect,type=item] run \
return 0

execute \
    if score $index weapon.aquilumera.count matches 1.. run \
return 0

execute \
    as @a[tag=!weapon.aquilumera.return,gamemode=!creative] at @s run \
function weapons:type/sword/aquilumera/return/guide