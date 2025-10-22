scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.speed
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.speed.base.value
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.speed.value.max
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.speed.value

tag @s remove cse.status_effect.tactical_scroll_of_brilliance.speed
attribute @s minecraft:movement_speed modifier remove cse.status_effects.tactical_scroll_of_brilliance.speed

function cse:status_effects/apply/tactical_scroll_of_brilliance/speed/marker_data/remove