# ===================================================

# range



    ## Guide [ function armors:type/symbiotic_blood_oath/range ] >>> range

    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> use

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> true

    ## Guide [ function armors:type/symbiotic_blood_oath/effect/main ] >>> effect main



# ===================================================



scoreboard players add @s particle 3



execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle



particle block{block_state:"minecraft:redstone_block"} ^ ^0.5 ^4 2 0 2 0 5 force @a

particle dust{color:[1.000,0.000,0.000],scale:1.5} ^ ^0.5 ^6 0 0 0 0 0 force @a



execute \
    rotated ~3 0 run \
function armors:type/symbiotic_blood_oath/range