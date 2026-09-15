# CD 設定（絕對時間制）/ Set cooldown (absolute time)
#
#   function armors:cd {id:"armor.<name>.cd", cd:<ticks>}
#
# 記的是「什麼時候轉好」的時間點，不是「還剩幾 tick」，
# 所以不需要每 tick 對全體玩家倒數。判斷式一律用：
#
#   unless score #gametime global.main >= @s <id>   -> 還沒轉好

$scoreboard players set #math global.main $(cd)

$scoreboard players operation @s $(id) = #gametime global.main
$scoreboard players operation @s $(id) += #math global.main
