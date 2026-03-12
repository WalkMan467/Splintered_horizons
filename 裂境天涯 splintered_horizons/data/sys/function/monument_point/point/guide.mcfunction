advancement grant @a[distance=..16] only sys:monument_point/tips/main


execute \
    if entity @n[distance=..5,predicate=sys:monument_point/objective_item/1,type=item] \
    positioned 767 153.5 1014 run \
function sys:monument_point/objective_item/1/spawn

execute \
    if entity @n[distance=..5,predicate=sys:monument_point/objective_item/2,type=item] \
    positioned 753 153.5 1014 run \
function sys:monument_point/objective_item/2/spawn

execute \
    if entity @n[distance=..5,predicate=sys:monument_point/objective_item/3,type=item] \
    positioned 767 153.5 1012 run \
function sys:monument_point/objective_item/3/spawn

execute \
    as @e[distance=..30,tag=sys.monument_point.rotate,limit=8,type=item_display] at @s run \
rotate @s ~1 0