execute \
    unless score @s player.setting.waterfall_effect matches 1.. run \
    return run \
scoreboard players reset @s player.damp_fx.timer

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_in_water:1b}}} run \
scoreboard players set @s player.damp_fx.timer 300

execute \
    if score @s player.damp_fx.timer matches 0.. run \
function players:setting/waterfall_effect/timer