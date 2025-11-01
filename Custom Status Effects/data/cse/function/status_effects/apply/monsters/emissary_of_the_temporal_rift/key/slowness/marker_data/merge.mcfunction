tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge
tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user

execute as @e[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data] if score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id = @e[type=!marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge,limit=1] cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id run tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge

tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge
tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.user

tag @e[type=marker,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data,tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge] remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key.data_target.merge