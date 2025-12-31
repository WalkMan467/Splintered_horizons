# Guide
# ===================================================
# Actionbar Gui Main Function

    ## Guide [ function sys:shop_point/main ] >>> Controlling the \
    store GUI scope
    ## Guide [ function players:actionbar/shop ] >>> Control GUI Icons

# ===================================================
execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# Display Actionbar
title @s actionbar [{"translate": "tips.otherworld_portal.1","color": "white"}]