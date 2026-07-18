# ===================================================

# timer_s



    ## Guide [ function armors:timer_s ] >>> timer_s

    ## Guide [ function armors:loop ] >>> armors:loop

    ## Guide [ function armors:reload_rpg_armor_effect ] >>> armors:reload rpg armor effect

    ## Guide [ function main:load ] >>> main:load



# ===================================================



scoreboard players remove @a[scores={armor.black_hole.boots.cd=1..}] armor.black_hole.boots.cd 1

scoreboard players remove @a[scores={armor.paladins_helmet.cd=1..}] armor.paladins_helmet.cd 1

scoreboard players remove @a[scores={armor.armor_of_the_coiled_rock.cd=1..}] armor.armor_of_the_coiled_rock.cd 1

scoreboard players remove @a[scores={armor.coiled_rock_helmet.cd=1..}] armor.coiled_rock_helmet.cd 1

scoreboard players remove @a[scores={armor.finality_chestplate.cd=1..}] armor.finality_chestplate.cd 1

scoreboard players remove @a[scores={armor.windriders_legplates.cd=1..}] armor.windriders_legplates.cd 1

scoreboard players remove @a[scores={armor.radiant_guardians_helmet.cd=1..}] armor.radiant_guardians_helmet.cd 1

scoreboard players remove @a[scores={armor.symbiotic_blood_oath.cd=1..}] armor.symbiotic_blood_oath.cd 1



execute \
    as @a at @s run \
function armors:type/finality_chestplate/effect/timer



execute \
    as @a at @s run \
function armors:type/paladins_helmet/effect/timer

schedule function armors:timer_s 1s