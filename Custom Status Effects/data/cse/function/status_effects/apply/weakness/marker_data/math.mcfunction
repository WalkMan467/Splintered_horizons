$data modify entity @s data.cse.weakness.add.value set value $(value)f
$data modify entity @s data.cse.weakness.max_value set value $(max)f


execute store result score #value cse.status_effects.weakness.math run \
data get entity @s data.cse.weakness.add.value 1000

execute store result score #base cse.status_effects.weakness.math run \
data get entity @s data.cse.weakness.base_value 1000


execute store result score #max cse.status_effects.weakness.math run \
data get entity @s data.cse.weakness.max_value 1000


execute \
    if score #base cse.status_effects.weakness.math < #max cse.status_effects.weakness.math run \
scoreboard players operation #base cse.status_effects.weakness.math += #value cse.status_effects.weakness.math

execute \
    if score #base cse.status_effects.weakness.math >= #max cse.status_effects.weakness.math run \
scoreboard players operation #base cse.status_effects.weakness.math = #max cse.status_effects.weakness.math

execute store result entity @s data.cse.weakness.base_value float 0.001 run \
scoreboard players get #base cse.status_effects.weakness.math