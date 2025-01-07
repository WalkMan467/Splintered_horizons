function players:inventory/-store {bag:overworld}

playsound minecraft:block.beacon.deactivate voice @a ~ ~ ~ 1 0.5
particle trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.5 0.5 0 50 normal @a

attribute @s minecraft:knockback_resistance modifier add effect.void 1024 add_value
attribute @s minecraft:explosion_knockback_resistance modifier add effect.void 1024 add_value

clear @s

advancement revoke @s only effects:void/effect/out