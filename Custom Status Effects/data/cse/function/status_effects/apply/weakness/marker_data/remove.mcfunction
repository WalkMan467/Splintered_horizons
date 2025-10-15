tag @s add cse.status_effect.weakness.data_target.remove
tag @s add cse.status_effect.weakness.user

execute as @e[type=marker,tag=cse.status_effect.weakness.data] if score @s cse.status_effects.weakness.id = @e[type=!marker,tag=cse.status_effect.weakness.user,tag=cse.status_effect.weakness.data_target.remove,limit=1] cse.status_effects.weakness.id run kill @s

tag @s remove cse.status_effect.weakness.data_target.remove
tag @s remove cse.status_effect.weakness.user