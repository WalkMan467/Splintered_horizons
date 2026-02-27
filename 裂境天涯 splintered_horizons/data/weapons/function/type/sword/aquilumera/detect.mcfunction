tag @a remove weapon.aquilumera.clear

execute \
    as @a \
    if score @s weapon.aquilumera.count matches 1.. run \
tag @s remove weapon.aquilumera.return

tag @a[gamemode=creative] remove weapon.aquilumera.return

execute \
    store result score $index weapon.aquilumera.count run \
clear @a *[minecraft:custom_data~{weapon:"aquilumera"}] 0

execute \
    unless score $index weapon.aquilumera.count matches 2.. run \
return 0

execute \
    as @a \
    store result score @s weapon.aquilumera.count run \
clear @s *[minecraft:custom_data~{weapon:"aquilumera"}] 0

execute \
    as @a \
    if score @s weapon.aquilumera.count matches 1.. run \
function weapons:type/sword/aquilumera/clear