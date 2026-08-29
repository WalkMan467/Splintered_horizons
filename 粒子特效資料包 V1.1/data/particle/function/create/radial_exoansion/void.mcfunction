execute \
    if entity @s[type=player] run \
return 0

# take all on passenger / vehicle to death
tag @s add sys.void
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} on passengers unless entity @s[tag=sys.void] run function particle:create/radial_exoansion/void
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} on vehicle unless entity @s[tag=sys.void] run function particle:create/radial_exoansion/void

tp @s ~ -255 ~
kill @s