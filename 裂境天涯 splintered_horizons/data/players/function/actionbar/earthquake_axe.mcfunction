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
title @s actionbar [{"text": "| ","color": "white"},{"text": "[","color": "white","underlined": false},{"keybind": "key.jump","underlined": true,"color": "dark_green"},{"text": "] ","color": "white","underlined": false},{"translate": "weapon.earthquake_axe.ultimate.tip.1","fallback": "再次釋放","color": "white"},{"text": " | "},{"text": "[","color": "white","underlined": false},{"keybind": "key.sneak","color":"dark_green","underlined": true},{"text": "] ","color": "white","underlined": false},{"translate": "weapon.earthquake_axe.ultimate.tip.2","color": "white","fallback": "取消"},{"text": " |","color": "white"}]