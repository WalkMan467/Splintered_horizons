execute unless score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id matches -2147483648..2147483647 run scoreboard players add #global cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id 1
execute unless score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id matches -2147483648..2147483647 run scoreboard players operation @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id = #global cse.status_effects.monsters.emissary_of_the_temporal_rift.key.id

$execute unless entity @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] run attribute @s minecraft:movement_speed modifier add cse.status_effects.monsters.emissary_of_the_temporal_rift.key -$(base) add_multiplied_base

$execute unless entity @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] run function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute if entity @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] run function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key $(duration)

execute if entity @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] if score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.base.value < @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value.max run scoreboard players operation @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.base.value += @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value
execute if entity @s[tag=cse.status_effects.monsters.emissary_of_the_temporal_rift.key] if score @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.base.value >= @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value.max run scoreboard players operation @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.base.value = @s cse.status_effects.monsters.emissary_of_the_temporal_rift.key.value.max
tag @s add cse.status_effects.monsters.emissary_of_the_temporal_rift.key

    # Example:
# function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/use {duration:100,base:0.1, value:0.9,max:1.0}