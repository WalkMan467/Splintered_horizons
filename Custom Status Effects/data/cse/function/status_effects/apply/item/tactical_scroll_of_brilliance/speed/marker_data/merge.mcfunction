tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge
tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.user

execute as @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data] if score @s cse.status_effects.tactical_scroll_of_brilliance.speed.id = @e[type=!marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.user,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge,limit=1] cse.status_effects.tactical_scroll_of_brilliance.speed.id run tag @s add cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge

tag @s remove cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge
tag @s remove cse.status_effects.tactical_scroll_of_brilliance.speed.user

tag @e[type=marker,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data,tag=cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge] remove cse.status_effects.tactical_scroll_of_brilliance.speed.data_target.merge