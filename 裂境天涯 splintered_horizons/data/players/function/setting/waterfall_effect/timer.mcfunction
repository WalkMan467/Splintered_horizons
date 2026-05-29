execute \
    if score @s player.damp_fx.timer matches ..0 run \
    return run \
function players:setting/waterfall_effect/reset


execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_in_water:1b}}} run \
return 0

scoreboard players remove @s player.damp_fx.timer 1

particle minecraft:splash ~ ~1 ~ 0.25 0.5 0.25 1 2 normal @a
playsound minecraft:block.pointed_dripstone.drip_water voice @a ~ ~1 ~ 1 1