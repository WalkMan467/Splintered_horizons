scoreboard players reset @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key
scoreboard players reset @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.base.value
scoreboard players reset @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value.max
scoreboard players reset @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value

tag @s remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key
attribute @s minecraft:movement_speed modifier remove cse.status_effects.monsters.emissary_of_the_temporal_rift.key

function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/marker_data/remove