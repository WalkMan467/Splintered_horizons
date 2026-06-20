# ===================================================

# timer



    ## Guide [ function sys:dummy_mob/timer ] >>> timer

    ## Guide [ function sys:dummy_mob/introduction ] >>> introduction



# ===================================================



execute \
    unless score @s sys.dummy_mob matches -2147483648..2147483647 run \
return 0



execute \
    if score @s sys.dummy_mob matches ..0 run \
return run \
scoreboard players reset @s sys.dummy_mob



scoreboard players remove @s sys.dummy_mob 1