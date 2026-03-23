
# ===================================================
# Symbiotic Blood Oath Main Function

    ## Guide [ function armors:type/symbiotic_blood_oath/passive/main ] >>> Passive Skills Loop
    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> Detect crouching trigger function
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> Multiple players around are performing this
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> There were no other players around executing this program
    ## Guide [ function armors:type/symbiotic_blood_oath/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/use ] >>> Passive Skills Use
# ===================================================
execute \
    if score @s player.hurt_time matches 9 \
    if predicate armors:type/symbiotic_blood_oath/passive/50 run \
function armors:type/symbiotic_blood_oath/passive/use