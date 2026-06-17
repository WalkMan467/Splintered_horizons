# ===================================================
# loop

    ## Guide [ function armors:loop ] >>> loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> armors:reload rpg armor effect
    ## Guide [ function armors:type/black_hole/boots/effect/use ] >>> use

# ===================================================

# Equipment Activate Detection

    # helmet = This equipment's skill trigger condition is bound to activate after the helmet skill is triggered.
    # chestplate = This equipment's skill trigger condition is bound to activate after the chestplate skill is triggered.
    # leggings = This equipment's skill trigger condition is bound to activate after the leggings skill is triggered.
    # boots = This equipment's skill trigger condition is bound to activate after the boots skill is triggered.

# ===================================================


execute \
    if score @s armor.helmet.effect.actived matches 1.. run \
function #armors:helmet

execute \
    if score @s armor.chestplate.effect.actived matches 1.. run \
function #armors:chestplate

execute \
    if score @s armor.leggings.effect.actived matches 1.. run \
function #armors:leggings

execute \
    if score @s armor.boots.effect.actived matches 1.. run \
function #armors:boots

# ===================================================