# function sys:dummy_mob/interface

    # out: sys.dummy_mob.interface

execute \
    if score @s sys.dummy_mob matches 1.. run \
    return run \
tag @s add sys.dummy_mob.interface

tag @s[tag=sys.dummy_mob] add sys.dummy_mob.interface