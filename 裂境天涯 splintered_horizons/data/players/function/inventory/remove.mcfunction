
# 載入 data
$data modify storage minecraft:temp bag.bag set value "$(bag)"
function players:inventory/uuid

# 背包
function players:inventory/remove/2 with storage minecraft:temp bag
data remove storage minecraft:temp bag