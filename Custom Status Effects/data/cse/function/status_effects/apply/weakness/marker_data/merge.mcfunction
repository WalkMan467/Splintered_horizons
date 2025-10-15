tag @s add cse.status_effect.weakness.data_target.merge
tag @s add cse.status_effect.weakness.user

execute as @e[type=marker,tag=cse.status_effect.weakness.data] if score @s cse.status_effects.weakness.id = @e[type=!marker,tag=cse.status_effect.weakness.user,tag=cse.status_effect.weakness.data_target.merge,limit=1] cse.status_effects.weakness.id run tag @s add cse.status_effect.weakness.data_target.merge

tag @s remove cse.status_effect.weakness.data_target.merge
tag @s remove cse.status_effect.weakness.user

tag @e[type=marker,tag=cse.status_effect.weakness.data,tag=cse.status_effect.weakness.data_target.merge] remove cse.status_effect.weakness.data_target.merge