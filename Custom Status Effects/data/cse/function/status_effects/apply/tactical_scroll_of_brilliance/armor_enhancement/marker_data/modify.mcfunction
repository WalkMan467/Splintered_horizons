tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target
tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target,limit=1] cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target
$execute as @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target] run function cse:status_effects/apply/tactical_scroll_of_brilliance/armor_enhancement/marker_data/math {value:$(value), max:$(max)}
attribute @s minecraft:armor modifier remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement
data modify storage cse:status_effects tactical_scroll_of_brilliance.armor_enhancement.final_value.value set from entity @n[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target] data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base_value
function cse:status_effects/apply/tactical_scroll_of_brilliance/armor_enhancement/marker_data/merge_2 with storage cse:status_effects tactical_scroll_of_brilliance.armor_enhancement.final_value

data remove storage cse:status_effects tactical_scroll_of_brilliance.armor_enhancement

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target] remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target