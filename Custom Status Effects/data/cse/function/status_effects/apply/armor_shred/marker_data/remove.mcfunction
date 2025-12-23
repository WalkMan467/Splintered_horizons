tag @s add cse.status_effect.armor_shred.data_target.remove
tag @s add cse.status_effect.armor_shred.user

execute as @e[sort=arbitrary,type=marker,tag=cse.status_effect.armor_shred.data] if score @s cse.status_effects.armor_shred.id = @e[type=!marker,tag=cse.status_effect.armor_shred.user,tag=cse.status_effect.armor_shred.data_target.remove,limit=1] cse.status_effects.armor_shred.id run kill @s

tag @s remove cse.status_effect.armor_shred.data_target.remove
tag @s remove cse.status_effect.armor_shred.user