# ===================================================

# timer



    ## Guide [ function armors:type/finality_chestplate/effect/timer ] >>> timer

    ## Guide [ function armors:type/finality_chestplate/use ] >>> use

    ## Guide [ function armors:type/finality_chestplate/effect/guide ] >>> guide

    ## Guide [ function armors:timer_s ] >>> armors:timer s



# ===================================================



# Atk dmg Buff Timer





execute \
    if score @s armor.finality_chestplate.effect.timer matches 1.. run \
function armors:type/finality_chestplate/effect/guide



execute \
    if score @s armor.finality_chestplate.effect.timer matches 0 run \
function armors:type/finality_chestplate/effect/reset