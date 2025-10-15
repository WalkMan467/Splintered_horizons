execute unless score @s cse.status_effects.weakness.id matches -2147483648..2147483647 run scoreboard players add #global cse.status_effects.weakness.id 1
execute unless score @s cse.status_effects.weakness.id matches -2147483648..2147483647 run scoreboard players operation @s cse.status_effects.weakness.id = #global cse.status_effects.weakness.id

$execute unless entity @s[tag=cse.status_effect.weakness] run attribute @s minecraft:attack_damage modifier add cse.status_effects.weakness -$(base) add_multiplied_base

$execute unless entity @s[tag=cse.status_effect.weakness] run function cse:status_effects/apply/weakness/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute if entity @s[tag=cse.status_effect.weakness] run function cse:status_effects/apply/weakness/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.weakness $(duration)

execute if entity @s[tag=cse.status_effect.weakness] if score @s cse.status_effects.weakness.base.value < @s cse.status_effects.weakness.value.max run scoreboard players operation @s cse.status_effects.weakness.base.value += @s cse.status_effects.weakness.value
execute if entity @s[tag=cse.status_effect.weakness] if score @s cse.status_effects.weakness.base.value >= @s cse.status_effects.weakness.value.max run scoreboard players operation @s cse.status_effects.weakness.base.value = @s cse.status_effects.weakness.value.max
tag @s add cse.status_effect.weakness

    # Example:
# function cse:status_effects/apply/weakness/use {duration:100,base:0.1, value:0.9,max:1.0}