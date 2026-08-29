$scoreboard players set #math global.main $(cd)

# GameTime + CD 計算甚麼時候轉好
$scoreboard players operation @s $(id) = #gametime global.main
$scoreboard players operation @s $(id) += #math global.main