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

execute \
    unless score #temp player.actionbar.otherworld_portal.2 matches 2 run \
title @s actionbar [{"translate": "tips.otherworld_portal.2","color": "red"}]

execute \
    if score #temp player.actionbar.otherworld_portal.2 matches 2 run \
title @s actionbar [{"translate": "tips.otherworld_portal.3","color": "red",with:[{"translate": "characters.seronis","color": "red"}]}]