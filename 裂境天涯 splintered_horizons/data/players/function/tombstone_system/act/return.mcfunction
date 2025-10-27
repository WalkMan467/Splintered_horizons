tag @s remove player.tombstone.temp

function players:inventory/return {bag:"tombstone"}

playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 1

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @a
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 60 normal @a