# 偵測除了 AJ 以外特定 Tag 與 完全沒有 Tag 標籤的實體並列入觀察名單

execute if entity @s[tag=weapon.nightfall.p,type=block_display] run return 1
execute if entity @s[tag=monster.marker,type=marker] run return 1
execute if entity @s[tag=monster.forest_messenger.cocoon.display] run return 1
execute if entity @s[type=item_display,tag=] run return 1
execute if entity @s[type=block_display,tag=] run return 1