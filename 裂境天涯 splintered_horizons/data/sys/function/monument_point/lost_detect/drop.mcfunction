execute \
    unless entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/1,type=item] run \
return 1

execute \
    unless entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/2,type=item] run \
return 1

execute \
    unless entity @n[distance=0..,sort=arbitrary,predicate=sys:monument_point/objective_item/3,type=item] run \
return 1

return 0