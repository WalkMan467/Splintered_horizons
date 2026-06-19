# ===================================================

# apostle_of_eternity_1



    ## Guide [ function players:actionbar/apostle_of_eternity_1 ] >>> apostle_of_eternity_1

    ## Guide [ function players:actionbar/main ] >>> players:actionbar main



# ===================================================



execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0



execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0



# Display Actionbar



execute \
    if score @s monster.apostle_of_eternity.lock.click matches 1 run \
    return run \
title @s actionbar [{"translate": "█","color": "green"},{"translate":"░░░░","color": "white"}]



execute \
    if score @s monster.apostle_of_eternity.lock.click matches 2 run \
    return run \
title @s actionbar [{"translate": "██","color": "green"},{"translate":"░░░","color": "white"}]



execute \
    if score @s monster.apostle_of_eternity.lock.click matches 3 run \
    return run \
title @s actionbar [{"translate": "███","color": "green"},{"translate":"░░","color": "white"}]



execute \
    if score @s monster.apostle_of_eternity.lock.click matches 4 run \
    return run \
title @s actionbar [{"translate": "████","color": "green"},{"translate":"░","color": "white"}]



execute \
    if score @s monster.apostle_of_eternity.lock.click matches 5.. run \
    return run \
title @s actionbar [{"translate": "█████","color": "green"}]

