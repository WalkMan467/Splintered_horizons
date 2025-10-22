tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.data_target
tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.speed.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.user,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target,limit=1] cse.status_effects.tactical_scroll_of_brilliance.speed.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.data_target
$execute as @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target] run function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:movement_speed modifier remove cse.status_effects.tactical_scroll_of_brilliance.speed
data modify storage cse:status_effects tactical_scroll_of_brilliance.speed.final_value.value set from entity @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target] data.cse.status_effects.tactical_scroll_of_brilliance.speed.base_value
function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/marker_data/merge_2 with storage cse:status_effects tactical_scroll_of_brilliance.speed.final_value

data remove storage cse:status_effects tactical_scroll_of_brilliance.speed

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.speed.data_target
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.speed.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target] remove cse.status_effects.tactical_scroll_of_brilliance.speed.data_target