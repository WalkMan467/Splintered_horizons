
# take all on passenger / vehicle

tag @s add sys.detect

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} \
    on passengers \
    unless entity @s[tag=sys.detect] run \
function sys:zipline_platform/remove/1

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} \
    on vehicle \
    unless entity @s[tag=sys.detect] run \
function sys:zipline_platform/remove/1