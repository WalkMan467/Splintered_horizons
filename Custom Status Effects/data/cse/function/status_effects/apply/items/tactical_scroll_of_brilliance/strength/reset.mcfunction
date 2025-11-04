scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.strength
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.strength.base.value
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.strength.value.max
scoreboard players reset @s cse.status_effects.tactical_scroll_of_brilliance.strength.value

tag @s remove cse.status_effect.tactical_scroll_of_brilliance.strength
attribute @s minecraft:attack_damage modifier remove cse.status_effects.tactical_scroll_of_brilliance.strength

function cse:status_effects/apply/items/tactical_scroll_of_brilliance/strength/marker_data/remove