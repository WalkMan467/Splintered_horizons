# Particle
execute \
    if entity @s[tag=sys.item_frame.particle] \
    if predicate sys:item_frame/random_chance run \
particle wax_off ~ ~ ~ 0.2 0.2 0.2 0 1 force @s

# Remove empty item frames
execute \
    if predicate sys:item_frame/empty_item run \
kill @s