tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge
tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.strength.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.user,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge,limit=1] cse.status_effects.tactical_scroll_of_brilliance.strength.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.strength.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data,tag=cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge] remove cse.status_effects.tactical_scroll_of_brilliance.strength.data_target.merge