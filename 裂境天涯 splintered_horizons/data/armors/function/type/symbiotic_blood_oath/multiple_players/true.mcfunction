# ===================================================
# true

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> true
    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> use
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> false
    ## Guide [ function armors:type/symbiotic_blood_oath/effect/main ] >>> effect main

# ===================================================

effect give @a[tag=!armor.symbiotic_blood_oath.user,distance=..6] instant_health 1 1 true

$damage @s $(health) armors:type/symbiotic_blood_oath/damage