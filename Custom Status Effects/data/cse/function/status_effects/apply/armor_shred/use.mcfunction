
execute \
    unless score @s cse.status_effects.armor_shred.id matches -2147483648..2147483647 run \
scoreboard players add #global cse.status_effects.armor_shred.id 1

execute \
    unless score @s cse.status_effects.armor_shred.id matches -2147483648..2147483647 run \
scoreboard players operation @s cse.status_effects.armor_shred.id = #global cse.status_effects.armor_shred.id

$execute \
    unless entity @s[tag=cse.status_effect.armor_shred] run \
attribute @s minecraft:armor modifier add cse.status_effects.armor_shred -$(base) add_multiplied_base

$execute \
    unless entity @s[tag=cse.status_effect.armor_shred] run \
function cse:status_effects/apply/armor_shred/marker_data/add {base:$(base), value:$(value), max:$(max)}
$execute \
    if entity @s[tag=cse.status_effect.armor_shred] run \
function cse:status_effects/apply/armor_shred/marker_data/modify {value:$(value), max:$(max)}

$scoreboard players set @s cse.status_effects.armor_shred $(duration)


execute \
    if entity @s[tag=cse.status_effect.armor_shred] \
    if score @s cse.status_effects.armor_shred.base.value < @s cse.status_effects.armor_shred.value.max run \
scoreboard players operation @s cse.status_effects.armor_shred.base.value += @s cse.status_effects.armor_shred.value

execute \
    if entity @s[tag=cse.status_effect.armor_shred] \
    if score @s cse.status_effects.armor_shred.base.value >= @s cse.status_effects.armor_shred.value.max run \
scoreboard players operation @s cse.status_effects.armor_shred.base.value = @s cse.status_effects.armor_shred.value.max
tag @s add cse.status_effect.armor_shred

    # Example:
# function cse:status_effects/apply/armor_shred/use {duration:100,base:0.1, value:0.1,max:1.0}