$data modify entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.add_value set value $(value)f
$data modify entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.max_value set value $(max)f

execute store result score #value cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math run data get entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.add_value 1000
execute store result score #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math run data get entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base_value 1000

execute store result score #max cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math run data get entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.max_value 1000

execute if score #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math < #max cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math run scoreboard players operation #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math += #value cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math
execute if score #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math >= #max cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math run scoreboard players operation #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math = #max cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math
execute store result entity @s data.cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.base_value float 0.001 run scoreboard players get #base cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.math