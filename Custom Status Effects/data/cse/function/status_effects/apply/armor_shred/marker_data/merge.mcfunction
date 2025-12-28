tag @s add cse.status_effect.armor_shred.data_target.merge
tag @s add cse.status_effect.armor_shred.user


execute \
    as @e[type=marker,tag=cse.status_effect.armor_shred.data] \
    if score @s cse.status_effects.armor_shred.id = @e[type=!marker,tag=cse.status_effect.armor_shred.user,tag=cse.status_effect.armor_shred.data_target.merge,limit=1] cse.status_effects.armor_shred.id run \
tag @s add cse.status_effect.armor_shred.data_target.merge

tag @s remove cse.status_effect.armor_shred.data_target.merge
tag @s remove cse.status_effect.armor_shred.user

tag @e[type=marker,tag=cse.status_effect.armor_shred.data,tag=cse.status_effect.armor_shred.data_target.merge] remove cse.status_effect.armor_shred.data_target.merge