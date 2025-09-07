
# Backpack
data modify storage minecraft:temp bag.inventory set from entity @s Inventory
data modify storage minecraft:temp bag.equipment set from entity @s equipment
execute store result storage minecraft:temp bag.xp_level int 1 run xp query @s levels
execute store result storage minecraft:temp bag.xp_point int 1 run xp query @s points

# Save data
$data modify storage minecraft:temp bag.bag set value "$(bag)"
function players:inventory/uuid
function players:inventory/save/2 with storage minecraft:temp bag
data remove storage minecraft:temp bag