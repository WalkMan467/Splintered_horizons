execute store result score #difficulty global.main run difficulty

# 直接用 @e 且不加任何目標選擇器這貌似不能用在大規模的地方，會有性能問題
# 主要是這樣，所有 @e 導向的 function 都會運行，然後這跟實體數量成正比
# 細部調用倒是是省效能的好方法
# 主要以檔 AJ 調用資源為優先，因為會增加無用效能

execute as @e[type=!player,tag=!aj.global.root] at @s run function main:guide/main

# Player Guide. / 玩家導向

execute as @a[tag=!aj.global.root] at @s run function main:guide/player