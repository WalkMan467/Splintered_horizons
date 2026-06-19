# ===================================================

# disabled_anvil



    ## Guide [ function players:actionbar/disabled_anvil ] >>> disabled_anvil

    ## Guide [ function players:actionbar/disabled_bed ] >>> disabled bed

    ## Guide [ function players:actionbar/main ] >>> players:actionbar main



# ===================================================



execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0



execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0



# Display Actionbar

title @s actionbar [{"translate": "block.minecraft.anvil.disabled","color": "red","bold": true, "italic":false}]