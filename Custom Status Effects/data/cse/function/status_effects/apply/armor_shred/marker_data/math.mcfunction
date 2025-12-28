$data modify entity @s data.cse.armor_shred.add.value set value $(value)f
$data modify entity @s data.cse.armor_shred.max_value set value $(max)f


execute \
    store result score #value cse.status_effects.armor_shred.math run \
data get entity @s data.cse.armor_shred.add.value 1000

execute \
    store result score #base cse.status_effects.armor_shred.math run \
data get entity @s data.cse.armor_shred.base_value 1000


execute \
    store result score #max cse.status_effects.armor_shred.math run \
data get entity @s data.cse.armor_shred.max_value 1000


execute \
    if score #base cse.status_effects.armor_shred.math < #max cse.status_effects.armor_shred.math run \
scoreboard players operation #base cse.status_effects.armor_shred.math += #value cse.status_effects.armor_shred.math

execute \
    if score #base cse.status_effects.armor_shred.math >= #max cse.status_effects.armor_shred.math run \
scoreboard players operation #base cse.status_effects.armor_shred.math = #max cse.status_effects.armor_shred.math

execute \
    store result entity @s data.cse.armor_shred.base_value float 0.001 run \
scoreboard players get #base cse.status_effects.armor_shred.math