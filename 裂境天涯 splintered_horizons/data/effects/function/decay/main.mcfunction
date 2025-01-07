particle minecraft:damage_indicator ~ ~ ~ 0.5 0.5 0.5 0.1 1 normal @a
execute unless score @s effect.decay_delay matches 1.. run function effects:decay/reset_delay

advancement grant @s only effects:tips/decay