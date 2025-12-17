# Guide
# ===================================================
# Actionbar Gui Main Function

    ## Guide [ function sys:shop_point/main ] >>> Controlling the store GUI scope
    ## Guide [ function players:actionbar/shop ] >>> Control GUI Icons

# ===================================================

# Display Actionbar
execute if score #player.actionbar.sys.forging_table.failure global.main matches 1 run title @s actionbar [{"translate": "sys.forging_table.energy_infusion_failure","color": "red"}]

execute if score #player.actionbar.sys.forging_table.failure global.main matches 2 run title @s actionbar [{"translate": "sys.forging_table.crafting.failure","color": "red"}]