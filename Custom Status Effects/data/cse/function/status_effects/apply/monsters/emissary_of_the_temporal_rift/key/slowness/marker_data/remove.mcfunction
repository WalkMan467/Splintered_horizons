tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.remove
tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user


execute \
    as @e[sort=arbitrary,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,type=marker] \
    if score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id = @e[type=!marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.remove,limit=1] cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id run \
kill @s

tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.remove
tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user