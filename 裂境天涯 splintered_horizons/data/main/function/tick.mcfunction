execute store result score #difficulty global.main run difficulty

# 這貌似不能用在大規模的地方，會有性能問題
# 主要是這樣，所有 @e 導向的 function 都會運行，然後這跟實體數量成正比
# 細部調用倒是是省效能的好方法
# 修改規模有點大我也不是不能 第 8 次的從 0 ~ 100% 大改 (反正我是瘋子)
# 總結: 等我有空再魔改一波吧
execute as @e[tag=!aj.global.root] at @s run function main:guide/main

function story:tick