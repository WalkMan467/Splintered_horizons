# ===================================================

# apostle_of_eternity



    ## Guide [ function players:actionbar/apostle_of_eternity ] >>> apostle_of_eternity

    ## Guide [ function players:actionbar/main ] >>> players:actionbar main



# ===================================================



execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0



execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0



# Display Actionbar

title @s actionbar [{"translate": "cse.status_effects.lock.1","color": "white",with:[{"keybind":"key.jump","underlined": true, "color": "dark_green","bold":true}]}]