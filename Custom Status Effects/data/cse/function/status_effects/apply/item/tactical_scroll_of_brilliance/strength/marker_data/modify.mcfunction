tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.data_target
tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.strength.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.user,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target,limit=1] cse.status_effects.tactical_scroll_of_brilliance.strength.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.data_target
$execute as @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target] run function cse:status_effects/apply/item/tactical_scroll_of_brilliance/strength/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:attack_damage modifier remove cse.status_effects.tactical_scroll_of_brilliance.strength
data modify storage cse:status_effects tactical_scroll_of_brilliance.strength.final_value.value set from entity @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target] data.cse.status_effects.tactical_scroll_of_brilliance.strength.base_value
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/strength/marker_data/merge_2 with storage cse:status_effects tactical_scroll_of_brilliance.strength.final_value

data remove storage cse:status_effects tactical_scroll_of_brilliance.strength

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.strength.data_target
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.strength.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target] remove cse.status_effects.tactical_scroll_of_brilliance.strength.data_target