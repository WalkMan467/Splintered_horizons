tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target
tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user

execute as @e[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data] if score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id = @e[type=!marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target,limit=1] cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id run tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target
$execute as @n[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target] run function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:movement_speed modifier remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key
data modify storage cse:status_effects slowness.final_value.value set from entity @n[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target] data.cse.slowness.base_value
function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/marker_data/merge_2 with storage cse:status_effects slowness.final_value

data remove storage cse:status_effects slowness

tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target
tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user

tag @e[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target] remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target