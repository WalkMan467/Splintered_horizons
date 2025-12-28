$data modify entity @s data.cse.slowness.add.value set value $(value)f
$data modify entity @s data.cse.slowness.max_value set value $(max)f


execute store result score #value cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math run \
data get entity @s data.cse.slowness.add.value 1000

execute store result score #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math run \
data get entity @s data.cse.slowness.base_value 1000


execute store result score #max cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math run \
data get entity @s data.cse.slowness.max_value 1000


execute \
    if score #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math < #max cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math run \
scoreboard players operation #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math += #value cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math

execute \
    if score #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math >= #max cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math run \
scoreboard players operation #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math = #max cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math

execute store result entity @s data.cse.slowness.base_value float 0.001 run \
scoreboard players get #base cse.status_effects.monsters.emissary_of_the_temporal_rift.key.math