tp @s ~ ~ ~ ~1 0

advancement grant @a[distance=..16] only sys:monument_point/tips/main


execute \
    if entity @n[type=item,distance=..5,predicate=sys:monument_point/objective_item/1] at @n[tag=sys.monument_point.point,type=marker] \
    positioned ^ ^ ^4 run \
function sys:monument_point/objective_item/1/spawn

execute \
    if entity @n[type=item,distance=..5,predicate=sys:monument_point/objective_item/2] at @n[tag=sys.monument_point.point,type=marker] \
    positioned ^ ^ ^4 run \
function sys:monument_point/objective_item/2/spawn

execute \
    if entity @n[type=item,distance=..5,predicate=sys:monument_point/objective_item/3] at @n[tag=sys.monument_point.point,type=marker] \
    positioned ^ ^ ^4 run \
function sys:monument_point/objective_item/3/spawn

tp @n[type=#dummy_mob,tag=sys.monument_point.water] ^ ^ ^3 facing entity @s feet
tp @n[type=#dummy_mob,tag=sys.monument_point.grass] ^ ^ ^-3 facing entity @s feet
tp @n[type=#dummy_mob,tag=sys.monument_point.fire] ^3 ^ ^ facing entity @s feet

rotate @n[type=#dummy_mob,tag=sys.monument_point.main,tag=!sys.monument_point.point] ~ 0