execute \
    if entity @s[tag=sys.fall_immunity] run \
function sys:fall_immunity/height_calculation

execute \
    if entity @s[tag=sys.fall_immunity] \
    unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run \
attribute @s safe_fall_distance modifier add sys.fall_immunity 1024 add_value

execute \
    if score @s sys.fall_immunity matches ..0 \
    run return run \
function sys:fall_immunity/reset

scoreboard players remove @s[scores={sys.fall_immunity=0..}] sys.fall_immunity 1

attribute @s[scores={sys.fall_immunity=0..}] safe_fall_distance modifier add sys.fall_immunity 1024 add_value