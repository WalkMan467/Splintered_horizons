execute \
    as 31c5dc57-17fa-44b5-b6fd-16dcbfd4e2fd at @s \
    if entity @p[sort=arbitrary,distance=..6] \
    facing entity @p[distance=..6] eyes run \
rotate @s ~ 0

execute \
    as 31c5dc57-17fa-44b5-b6fd-16dcbfd4e2fd at @s \
    unless entity @p[sort=arbitrary,distance=..6] run \
rotate @s 180 0

execute \
    as @a at @s \
    unless entity @n[distance=..5,predicate=sys:shooting_contest/item,type=item] run \
return 0


execute \
    as @a at @s run \
data modify entity @n[distance=..5,type=item,predicate=sys:shooting_contest/item] PickupDelay set value 0