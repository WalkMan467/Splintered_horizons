# ===================================================
# Symbiotic Blood Oath Main Function

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> Multiple players around are performing this
    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> Detect crouching trigger function
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> There were no other players around executing this program
    ## Guide [ function armors:type/symbiotic_blood_oath/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/use ] >>> Passive Skills Use
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/main ] >>> Passive Skills Loop
# ===================================================
effect give @a[tag=!armor.symbiotic_blood_oath.user,distance=..6] instant_health 1 1 true

$damage @s $(health) armors:type/symbiotic_blood_oath/damage