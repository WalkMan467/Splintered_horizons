# ===================================================
# wtsf

    ## Guide [ function players:actionbar/wtsf ] >>> wtsf
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
    unless score @s armor.wtsf.charge matches 1.. run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " □ □ □ □ □ ","color": "gold"},{"text": "⏱","color": "gold"}]

execute \
    if score @s armor.wtsf.charge matches 1 run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " ■ □ □ □ □ ","color": "gold"},{"text": "⏱","color": "gold"}]

execute \
    if score @s armor.wtsf.charge matches 2 run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " ■ ■ □ □ □ ","color": "gold"},{"text": "⏱","color": "gold"}]

execute \
    if score @s armor.wtsf.charge matches 3 run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " ■ ■ ■ □ □ ","color": "gold"},{"text": "⏱","color": "gold"}]

execute \
    if score @s armor.wtsf.charge matches 4 run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " ■ ■ ■ ■ □ ","color": "gold"},{"text": "⏱","color": "gold"}]

execute \
    if score @s armor.wtsf.charge matches 5 run \
    return run \
title @s actionbar [{"text": "⏱","color": "gold"},{text:" "},{"translate":"armor.wtsf"},{"text":":"},{"text": " ■ ■ ■ ■ ■ ","color": "gold"},{"text": "⏱","color": "gold"}]
