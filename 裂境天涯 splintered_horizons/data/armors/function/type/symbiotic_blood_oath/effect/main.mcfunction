# ===================================================

# main



    ## Guide [ function armors:type/symbiotic_blood_oath/effect/main ] >>> main

    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> use

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> true



# ===================================================



execute \
    if score @s player.hurt_time matches 9 \
    if predicate armors:type/symbiotic_blood_oath/passive/50 run \
function armors:type/symbiotic_blood_oath/passive/use