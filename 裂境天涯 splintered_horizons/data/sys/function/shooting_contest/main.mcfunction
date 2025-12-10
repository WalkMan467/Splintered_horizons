execute as @a at @s unless entity @n[distance=..5,type=item,predicate=sys:shooting_contest/item] run return 0

execute as @a at @s run data modify entity @n[distance=..5,type=item,predicate=sys:shooting_contest/item] PickupDelay set value 0