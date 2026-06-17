# ===================================================
# timer

    ## Guide [ function armors:type/paladins_helmet/effect/timer ] >>> timer
    ## Guide [ function armors:type/paladins_helmet/use ] >>> use
    ## Guide [ function armors:type/paladins_helmet/effect/guide ] >>> guide
    ## Guide [ function armors:timer_s ] >>> armors:timer s

# ===================================================

# This Function: effect/timer

execute \
    if score @s armor.paladins_helmet.effect.timer matches 1.. run \
function armors:type/paladins_helmet/effect/guide

execute \
    if score @s armor.paladins_helmet.effect.timer matches 0 run \
function armors:type/paladins_helmet/effect/reset