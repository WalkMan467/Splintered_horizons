
# take all on passenger / vehicle to death
tag @s add sys.temp.void
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} on passengers unless entity @s[tag=sys.temp.void] run function sys:void
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} on vehicle unless entity @s[tag=sys.temp.void] run function sys:void

tp @s ~ -255 ~
kill @s