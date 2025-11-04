execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id matches -2147483648..2147483647 run scoreboard players add #global cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id 1
execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id matches -2147483648..2147483647 run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id = #global cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement] run attribute @s minecraft:armor modifier add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement $(base) add_multiplied_base

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement] run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/armor_enhancement/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute if entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement] run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/armor_enhancement/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement $(duration)

execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement] if score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base.value < @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base.value += @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.value
execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement] if score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base.value >= @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base.value = @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.value.max
tag @s add cse.status_effect.tactical_scroll_of_brilliance.armor_enhancement

    # Example:
# function cse:status_effects/apply/items/tactical_scroll_of_brilliance/armor_enhancement/use {duration:100,base:0.1, value:0.1,max:1.0}