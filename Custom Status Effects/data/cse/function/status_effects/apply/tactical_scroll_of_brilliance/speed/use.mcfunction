execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.speed.id matches -2147483648..2147483647 run scoreboard players add #global cse.status_effects.tactical_scroll_of_brilliance.speed.id 1
execute unless score @s cse.status_effects.tactical_scroll_of_brilliance.speed.id matches -2147483648..2147483647 run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.speed.id = #global cse.status_effects.tactical_scroll_of_brilliance.speed.id

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.speed] run attribute @s minecraft:movement_speed modifier add cse.status_effects.tactical_scroll_of_brilliance.speed $(base) add_multiplied_base

$execute unless entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.speed] run function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute if entity @s[tag=cse.status_effect.tactical_scroll_of_brilliance.speed] run function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.tactical_scroll_of_brilliance.speed $(duration)

execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.speed] if score @s cse.status_effects.tactical_scroll_of_brilliance.speed.base.value < @s cse.status_effects.tactical_scroll_of_brilliance.speed.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.speed.base.value += @s cse.status_effects.tactical_scroll_of_brilliance.speed.value
execute if entity @s[tag=cse.status_effects.tactical_scroll_of_brilliance.speed] if score @s cse.status_effects.tactical_scroll_of_brilliance.speed.base.value >= @s cse.status_effects.tactical_scroll_of_brilliance.speed.value.max run scoreboard players operation @s cse.status_effects.tactical_scroll_of_brilliance.speed.base.value = @s cse.status_effects.tactical_scroll_of_brilliance.speed.value.max
tag @s add cse.status_effect.tactical_scroll_of_brilliance.speed

    # Example:
# function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/use {duration:100,base:0.1, value:0.1,max:1.0}