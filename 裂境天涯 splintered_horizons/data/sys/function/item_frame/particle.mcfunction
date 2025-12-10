    # Particle
execute \
    as @a at @s at @n[distance=..30,tag=sys.item_frame.particle,type=#dummy_mob] if predicate sys:item_frame/random_chance run \
particle wax_off ~ ~ ~ 0.2 0.2 0.2 0 1 force @s