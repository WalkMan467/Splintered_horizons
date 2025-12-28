
execute \
    if score @s cse.status_effects.armor_shred matches 1.. run \
function cse:status_effects/apply/armor_shred/guide

execute \
    if score @s cse.status_effects.armor_shred matches 0 run \
function cse:status_effects/apply/armor_shred/reset