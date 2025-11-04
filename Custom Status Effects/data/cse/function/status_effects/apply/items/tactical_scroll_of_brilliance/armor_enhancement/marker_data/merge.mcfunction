tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge
tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge,limit=1] cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data,tag=cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge] remove cse.status_effects.tactical_scroll_of_brilliance.armor_enhancement.data_target.merge