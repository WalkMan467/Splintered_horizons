
# take all on passenger / vehicle to death
tag @s[type=!player] add sys.temp.void
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} on passengers unless entity @s[tag=sys.temp.void] run function main:duration/kill_2
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} on vehicle unless entity @s[tag=sys.temp.void] run function main:duration/kill_2

tp @s ~ -255 ~
kill @s