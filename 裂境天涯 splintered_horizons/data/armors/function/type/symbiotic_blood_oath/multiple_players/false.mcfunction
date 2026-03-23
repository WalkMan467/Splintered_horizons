# ===================================================
# Symbiotic Blood Oath Main Function

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> There were no other players around executing this program
    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> Detect crouching trigger function
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> Multiple players around are performing this
    ## Guide [ function armors:type/symbiotic_blood_oath/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/use ] >>> Passive Skills Use
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/main ] >>> Passive Skills Loop
# ===================================================
execute \
    as @e[sort=arbitrary,distance=..6,type=!#minecraft:dummy_mob,type=!player] run \
function sys:dummy_mob/interface

execute \
    as @e[sort=arbitrary,distance=..6,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] at @s run \
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

$damage @s $(health) armors:type/symbiotic_blood_oath/damage

tag @e[sort=arbitrary,distance=..6,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface