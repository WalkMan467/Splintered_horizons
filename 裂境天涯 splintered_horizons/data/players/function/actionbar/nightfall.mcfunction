# Guide
# ===================================================
# Actionbar Gui Main Function

    ## Guide [ function sys:shop_point/main ] >>> Controlling the \
    store GUI scope
    ## Guide [ function players:actionbar/shop ] >>> Control GUI Icons

# ===================================================

# Display Actionbar

execute \
    unless score @s weapon.nightfall.charge matches 1.. run \
title @s actionbar [{"text": "⚡  □ □ □ □ □ ⚡","color": "white"}]
title @s[scores={weapon.nightfall.charge=1}] actionbar [{"text": "⚡  ■ □ □ □ □ ⚡","color": "aqua"}]
title @s[scores={weapon.nightfall.charge=2}] actionbar [{"text": "⚡  ■ ■ □ □ □ ⚡","color": "dark_aqua"}]
title @s[scores={weapon.nightfall.charge=3}] actionbar [{"text": "⚡  ■ ■ ■ □ □ ⚡","color": "yellow"}]
title @s[scores={weapon.nightfall.charge=4}] actionbar [{"text": "⚡  ■ ■ ■ ■ □ ⚡","color": "gold"}]
title @s[scores={weapon.nightfall.charge=5}] actionbar [{"text": "⚡  ■ ■ ■ ■ ■ ⚡","color": "dark_red"}]