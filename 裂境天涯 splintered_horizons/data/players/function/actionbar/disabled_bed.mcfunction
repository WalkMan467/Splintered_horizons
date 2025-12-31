# Guide
# ===================================================
# Actionbar Gui Main Function

    ## Guide [ function  players:actionbar/disabled_bed ] >>> Disabled Bed Actionbar
    ## Guide [ function  players:actionbar/main ] >>> Main Function

# ===================================================
execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# Display Actionbar
title @s actionbar [{"translate": "block.minecraft.bed.disabled","color": "red","bold": true, "italic":false}]