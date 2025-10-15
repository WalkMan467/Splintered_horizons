tag @s add cse.status_effect.weakness.data_target
tag @s add cse.status_effect.weakness.user

execute as @e[type=marker,tag=cse.status_effect.weakness.data] if score @s cse.status_effects.weakness.id = @e[type=!marker,tag=cse.status_effect.weakness.user,tag=cse.status_effect.weakness.data_target,limit=1] cse.status_effects.weakness.id run tag @s add cse.status_effect.weakness.data_target
$execute as @n[type=marker,tag=cse.status_effect.weakness.data,tag=cse.status_effect.weakness.data_target] run function cse:status_effects/apply/weakness/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:attack_damage modifier remove cse.status_effects.weakness
data modify storage cse:status_effects weakness.final_value.value set from entity @n[type=marker,tag=cse.status_effect.weakness.data,tag=cse.status_effect.weakness.data_target] data.cse.weakness.base_value
function cse:status_effects/apply/weakness/marker_data/merge_2 with storage cse:status_effects weakness.final_value

data remove storage cse:status_effects weakness

tag @s remove cse.status_effect.weakness.data_target
tag @s remove cse.status_effect.weakness.user

tag @e[type=marker,tag=cse.status_effect.weakness.data,tag=cse.status_effect.weakness.data_target] remove cse.status_effect.weakness.data_target