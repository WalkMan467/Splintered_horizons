
# Loading data
data remove storage minecraft:temp bag
function players:inventory/uuid
$data modify storage minecraft:temp bag.bag set value "$(bag)"
function players:inventory/return/2 with storage minecraft:temp bag

# Abort when this bag was never saved.
#
# return/2 fails quietly if the path does not exist, so without this the clear
# below still ran and return/3 then hit a missing macro key -- the player's
# whole inventory was wiped with nothing to put back. Reachable from
# players:setting/backup/return/trigger, which lets a player restore backup/1
# through backup/5 before the rotation has ever written that slot.
#
# xp_level is the marker because save always writes it: `store result` sets the
# value even when it is 0, so it is present even for an empty inventory.
#
# `return fail` rather than `return 0` so callers can tell the two apart with
# `execute store success`.
execute \
    unless data storage minecraft:temp bag.xp_level run \
return fail

# Backpack
clear @s
function players:inventory/return/3 with storage minecraft:temp bag
data remove storage minecraft:temp bag
