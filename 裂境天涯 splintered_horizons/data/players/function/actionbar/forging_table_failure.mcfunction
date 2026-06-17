# ===================================================
# forging_table_failure

    ## Guide [ function players:actionbar/forging_table_failure ] >>> forging_table_failure
    ## Guide [ function players:actionbar/main ] >>> players:actionbar main

# ===================================================

# Display Actionbar
execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

execute \
    if score #player.actionbar.sys.forging_table.failure global.main matches 1 run \
title @s actionbar [{"translate": "sys.forging_table.energy_infusion_failure","color": "red"}]


execute \
    if score #player.actionbar.sys.forging_table.failure global.main matches 2 run \
title @s actionbar [{"translate": "sys.forging_table.crafting.failure","color": "red"}]