# ===================================================
# Paladins Helmet Main Function

    ## Guide [ function armors:type/paladins_helmet/effect/timer ] >>> Timer
    ## Guide [ function armors:type/paladins_helmet/use ] >>> Detect Sneak ;Call Function
    ## Guide [ function armors:type/paladins_helmet/effect/guide ] >>> Timer Guide
    ## Guide [ function armors:type/paladins_helmet/effect/reset ] >>> Reset
# ===================================================
# This Function: effect/timer

execute \
    if score @s armor.paladins_helmet.effect.timer matches 1.. run \
function armors:type/paladins_helmet/effect/guide

execute \
    if score @s armor.paladins_helmet.effect.timer matches 0 run \
function armors:type/paladins_helmet/effect/reset