# ===================================================
# npc_interaction

    ## Guide [ function players:actionbar/npc_interaction ] >>> npc_interaction
    ## Guide [ function players:actionbar/main ] >>> players:actionbar main

# ===================================================

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# Display Actionbar
title @s actionbar [{"translate": "tips.npc_interaction.1","color": "white","bold": false,"underlined":false, "italic":false,"with":[{"keybind": "key.use","color":"green","bold":true,"italic":false,"underlined":true}]}]