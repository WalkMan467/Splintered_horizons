# ===================================================
# Finality Chestplate Main Function

    ## Guide [ function armors:type/finality_chestplate/effect/timer ] >>> Effect Timer
    ## Guide [ function armors:type/finality_chestplate/use ] >>> Finality Chestplate Armor Use
    ## Guide [ function armors:type/finality_chestplate/effect/guide ] >>> Effect Guide
    ## Guide [ function armors:type/finality_chestplate/effect/reset ] >>> Effect Clear

# ===================================================
# Atk dmg Buff Timer


execute \
    if score @s armor.finality_chestplate.effect.timer matches 1.. run \
function armors:type/finality_chestplate/effect/guide

execute \
    if score @s armor.finality_chestplate.effect.timer matches 0 run \
function armors:type/finality_chestplate/effect/reset