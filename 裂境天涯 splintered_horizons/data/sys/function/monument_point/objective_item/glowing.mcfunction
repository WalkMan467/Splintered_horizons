data modify entity @s Glowing set value 1b

execute \
    if predicate sys:monument_point/objective_item/1 run \
    return run \
team join glow.aqua @s

execute \
    if predicate sys:monument_point/objective_item/2 run \
    return run \
team join glow.green @s

execute \
    if predicate sys:monument_point/objective_item/3 run \
    return run \
team join glow.dark_red @s