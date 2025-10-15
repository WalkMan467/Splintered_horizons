scoreboard players reset @s cse.status_effects.weakness
scoreboard players reset @s cse.status_effects.weakness.base.value
scoreboard players reset @s cse.status_effects.weakness.value.max
scoreboard players reset @s cse.status_effects.weakness.value

tag @s remove cse.status_effect.weakness
attribute @s minecraft:attack_damage modifier remove cse.status_effects.weakness

function cse:status_effects/apply/weakness/marker_data/remove