tag @s add cse.status_effect.armor_shred.data_target
tag @s add cse.status_effect.armor_shred.user

execute as @e[type=marker,tag=cse.status_effect.armor_shred.data] if score @s cse.status_effects.armor_shred.id = @e[type=!marker,tag=cse.status_effect.armor_shred.user,tag=cse.status_effect.armor_shred.data_target,limit=1] cse.status_effects.armor_shred.id run tag @s add cse.status_effect.armor_shred.data_target
$execute as @n[type=marker,tag=cse.status_effect.armor_shred.data,tag=cse.status_effect.armor_shred.data_target] run function cse:status_effects/apply/armor_shred/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:armor modifier remove cse.status_effects.armor_shred
data modify storage cse:status_effects armor_shred.final_value.value set from entity @n[type=marker,tag=cse.status_effect.armor_shred.data,tag=cse.status_effect.armor_shred.data_target] data.cse.armor_shred.base_value
function cse:status_effects/apply/armor_shred/marker_data/merge_2 with storage cse:status_effects armor_shred.final_value

data remove storage cse:status_effects armor_shred

tag @s remove cse.status_effect.armor_shred.data_target
tag @s remove cse.status_effect.armor_shred.user

tag @e[type=marker,tag=cse.status_effect.armor_shred.data,tag=cse.status_effect.armor_shred.data_target] remove cse.status_effect.armor_shred.data_target