
scoreboard players add @s[scores={weapon.spider_passive=..10}] weapon.spider_passive 1
execute as @a[scores={weapon.spider_passive=10}] run function weapons:type/sword/spider/effect/screen_fx

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
tellraw @s[scores={weapon.spider_passive=10}] [{"text":"[","color":"green","bold":true},{"text":"寬恕無關慈悲","color":"white","bold":true},{"text":"] ","color":"green","bold":true},{"text":"發動！","color":"green","bold":true}]

execute as @a[scores={weapon.spider_passive=10}] run function weapons:type/sword/spider/effect/atk

# mob
execute as @s[scores={weapon.spider_passive=10}] run tag @e[type=!#minecraft:dummy_mob,distance=..4,type=!player] add dmger

tag @s[tag=!atker] add atker

# atk
execute as @s[scores={weapon.spider_passive=10}] run scoreboard players operation @s atk = .spider_passive atk

execute as @a[scores={weapon.spider_passive=10}] run function dmg_formula:weapons/type/sword/spider/dot/calculate

scoreboard players set @s[scores={weapon.spider_passive=10}] weapon.spider_passive 0


advancement revoke @a only weapons:type/sword/spider/attack