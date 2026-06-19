# ===================================================

# main



    ## Guide [ function armors:type/resilient/main ] >>> main

    ## Guide [ function armors:type/resilient/use ] >>> use

    ## Guide [ function armors:type/resilient/reset ] >>> reset



# ===================================================



# This Function: main



scoreboard players remove @s[scores={armor.resilient.cd=0..}] armor.resilient.cd 1



execute \
    if score @s armor.resilient.effect.timer matches ..0 run \
function armors:type/resilient/reset



execute \
    if score @s armor.resilient.cd matches 0 run \
function armors:type/resilient/reset