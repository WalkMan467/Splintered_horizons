execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{movement:{fall_distance:{min:4}}}} run \
tag @s add sys.fall_immunity.actived


execute \
    if entity @s[tag=sys.fall_immunity.actived] \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run \
function sys:attachable_component/fall_immunity/reset