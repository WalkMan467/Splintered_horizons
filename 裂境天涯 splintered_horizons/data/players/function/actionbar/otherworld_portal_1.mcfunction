# ===================================================

# otherworld_portal_1



    ## Guide [ function players:actionbar/otherworld_portal_1 ] >>> otherworld_portal_1

    ## Guide [ function players:actionbar/main ] >>> players:actionbar main



# ===================================================



execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0



execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0



# Display Actionbar

title @s actionbar [{"translate": "tips.otherworld_portal.1","color": "white"}]