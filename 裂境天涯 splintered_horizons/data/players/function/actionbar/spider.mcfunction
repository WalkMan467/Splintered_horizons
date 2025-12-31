# Guide
# ===================================================
# Actionbar Gui Main Function

    ## Guide [ function sys:shop_point/main ] >>> Controlling the \
    store GUI scope
    ## Guide [ function players:actionbar/shop ] >>> Control GUI Icons

# ===================================================

# Display Actionbar
execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

execute \
    unless score @s weapon.nightfall.charge matches 1.. run \
title @s actionbar [{"text": "⚡ 充能值 □ □ □ □ □ □ □ □ □ □ ⚡","color": "white"}]
title @s[scores={weapon.spider_passive=1}] actionbar [{"text": "⚡ 充能值 ■ □ □ □ □ □ □ □ □ □ ⚡","color": "aqua"}]
title @s[scores={weapon.spider_passive=2}] actionbar [{"text": "⚡ 充能值 ■ ■ □ □ □ □ □ □ □ □ ⚡","color": "aqua"}]
title @s[scores={weapon.spider_passive=3}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ □ □ □ □ □ □ □ ⚡","color": "dark_aqua"}]
title @s[scores={weapon.spider_passive=4}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ □ □ □ □ □ □ ⚡","color": "yellow"}]
title @s[scores={weapon.spider_passive=5}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ ■ □ □ □ □ □ ⚡","color": "yellow"}]
title @s[scores={weapon.spider_passive=6}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ ■ ■ □ □ □ □ ⚡","color": "gold"}]
title @s[scores={weapon.spider_passive=7}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ ■ ■ ■ □ □ □ ⚡","color": "gold"}]
title @s[scores={weapon.spider_passive=8}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ ■ ■ ■ ■ □ □ ⚡","color": "red"}]
title @s[scores={weapon.spider_passive=9}] actionbar [{"text": "⚡ 充能值 ■ ■ ■ ■ ■ ■ ■ ■ ■ □ ⚡","color": "red"}]
title @s[scores={weapon.spider_passive=10}] actionbar ["",{"text":"⚡","color":"dark_red"},{"text":" 充","color":"#FF0040"},{"text":"能","color":"#FF007B"},{"text":"值","color":"#FF00D0"},{"text":" ■","color":"#D400FF"},{"text":" ■","color":"#A600FF"},{"text":" ■","color":"#8000FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#2B00FF"},{"text":" ■","color":"#004CFF"},{"text":" ⚡","color":"#0084FF"}]
