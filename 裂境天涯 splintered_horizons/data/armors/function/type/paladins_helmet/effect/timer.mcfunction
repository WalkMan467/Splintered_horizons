# ===================================================
# Finality Chestplate Main Function

    ## Guide [ function armors:type/paladins_helmet/effect/timer ] >>> Effect Timer
    ## Guide [ function armors:type/paladins_helmet/use ] >>> Finality Chestplate Armor Use
    ## Guide [ function armors:type/paladins_helmet/effect/guide ] >>> Effect Guide
    ## Guide [ function armors:type/paladins_helmet/effect/reset ] >>> Effect Clear

# ===================================================
# Atk dmg Buff Timer


execute \
    if score @s armor.paladins_helmet.effect.timer matches 1.. run \
function armors:type/paladins_helmet/effect/guide

execute \
    if score @s armor.paladins_helmet.effect.timer matches 0 run \
function armors:type/paladins_helmet/effect/reset