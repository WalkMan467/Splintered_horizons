
# Loading data
function players:inventory/uuid
$data modify storage minecraft:temp bag.bag set value "$(bag)"
function players:inventory/return/2 with storage minecraft:temp bag

# Backpack
clear @s
function players:inventory/return/3 with storage minecraft:temp bag
data remove storage minecraft:temp bag