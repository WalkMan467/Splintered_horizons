# ===================================================
# disabled_bed

    ## Guide [ function players:actionbar/disabled_bed ] >>> disabled_bed
    ## Guide [ function players:actionbar/main ] >>> players:actionbar main
    ## Guide [ function players:actionbar/disabled_anvil ] >>> disabled anvil

# ===================================================

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# Display Actionbar
title @s actionbar [{"translate": "block.minecraft.bed.disabled","color": "red","bold": true, "italic":false}]