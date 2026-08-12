
# take all on passenger / vehicle to death
tag @s add sys.temp.void
execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} \
    on passengers \
    unless entity @s[tag=sys.temp.void] run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/2

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} \
    on vehicle \
    unless entity @s[tag=sys.temp.void] run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/2

kill @s