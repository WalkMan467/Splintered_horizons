# ===================================================
# false

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> false
    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> use
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> true
    ## Guide [ function armors:type/symbiotic_blood_oath/effect/main ] >>> effect main

# ===================================================

execute \
    as @e[sort=arbitrary,distance=..6,type=!#minecraft:dummy_mob,type=!player] run \
function sys:dummy_mob/interface

execute \
    as @e[sort=arbitrary,distance=..6,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] at @s run \
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

$damage @s $(health) armors:type/symbiotic_blood_oath/damage

tag @e[sort=arbitrary,distance=..6,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface