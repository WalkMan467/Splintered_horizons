scoreboard players reset @s cse.status_effects.armor_shred
scoreboard players reset @s cse.status_effects.armor_shred.base.value
scoreboard players reset @s cse.status_effects.armor_shred.value.max
scoreboard players reset @s cse.status_effects.armor_shred.value

tag @s remove cse.status_effect.armor_shred
attribute @s minecraft:armor modifier remove cse.status_effects.armor_shred

function cse:status_effects/apply/armor_shred/marker_data/remove