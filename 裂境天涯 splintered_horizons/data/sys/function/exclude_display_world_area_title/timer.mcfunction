# ===================================================

# timer



    ## Guide [ function sys:dummy_mob/timer ] >>> timer

    ## Guide [ function sys:dummy_mob/introduction ] >>> introduction



# ===================================================



execute \
    unless score @s sys.exclude_display_world_area_title matches -2147483648..2147483647 run \
return 0



execute \
    if score @s sys.exclude_display_world_area_title matches ..0 run \
return run \
scoreboard players reset @s sys.exclude_display_world_area_title



scoreboard players remove @s sys.exclude_display_world_area_title 1