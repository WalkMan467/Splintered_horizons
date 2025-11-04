execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.strength.id matches -2147483648..2147483647 run scoreboard players add #global cse.status_effects.tactical_scroll_of_brilliance.strength.id 1
execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.strength.id matches -2147483648..2147483647 run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.strength.id = #global cse.status_effects.tactical_scroll_of_brilliance.strength.id

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.strength] run attribute @s minecraft:attack_damage modifier add cse.status_effects.tactical_scroll_of_brilliance.strength $(base) add_multiplied_base

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.strength] run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/strength/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute if entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.strength] run function cse:status_effects/apply/items/tactical_scroll_of_brilliance/strength/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.tactical_scroll_of_brilliance.strength $(duration)

execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.strength] if score @s cse.status_effects.tactical_scroll_of_brilliance.strength.base.value < @s cse.status_effects.tactical_scroll_of_brilliance.strength.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.strength.base.value += @s cse.status_effects.tactical_scroll_of_brilliance.strength.value
execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.strength] if score @s cse.status_effects.tactical_scroll_of_brilliance.strength.base.value >= @s cse.status_effects.tactical_scroll_of_brilliance.strength.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.strength.base.value = @s cse.status_effects.tactical_scroll_of_brilliance.strength.value.max
tag @s add cse.status_effect.tactical_scroll_of_brilliance.strength

    # Example:
# function cse:status_effects/apply/items/tactical_scroll_of_brilliance/strength/use {duration:100,base:0.1, value:0.1,max:1.0}