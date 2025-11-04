tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.remove
tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.remove,limit=1] cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id run kill @s

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.remove
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user