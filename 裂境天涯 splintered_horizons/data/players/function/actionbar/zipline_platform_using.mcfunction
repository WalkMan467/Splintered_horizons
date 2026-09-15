# ===================================================

# zipline_platform_using



    ## Guide [ function players:actionbar/zipline_platform_using ] >>> zipline_platform_using

    ## Guide [ function players:actionbar/main ] >>> players:actionbar main



# ===================================================



execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0



execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0



# Display Actionbar

title @s actionbar [{"translate": "tips.zipline_platform.using.1","color": "white",with:[{"keybind":"key.sneak","underlined": true, "color": "dark_green"},{"keybind":"key.sprint","underlined": true, "color": "dark_green"}]}]