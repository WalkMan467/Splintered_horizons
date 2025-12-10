## Drop all item in `multipack:graves`. Requires that $(id), $(count), and $(components) correspond to 
## the nbt of the last item in `multipack:graves`.
$summon item ~ ~ ~ {Item:{id:"$(id)",count:$(count),components:$(components)}}
data remove storage multipack:graves item[-1]
# Ensure next item in `multipack:graves` has a components value before recursing
execute unless data storage multipack:graves item[-1].components run \
    data modify storage multipack:graves item[-1].components set value "{}"
function m_graves:graves/drop_item with storage multipack:graves item[-1]
