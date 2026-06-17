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
title @s actionbar [{"translate": "mount.onboard","color": "white",with:[{"keybind":"key.sneak","underlined": false, "color": "white"}]}]