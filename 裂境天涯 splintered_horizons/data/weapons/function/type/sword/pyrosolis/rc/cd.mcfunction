# CD = 5s
scoreboard players set #math weapon.pyrosolis.cd 100

# GameTime + CD 計算甚麼時候轉好
scoreboard players operation @s weapon.pyrosolis.cd = #gametime global.main
scoreboard players operation @s weapon.pyrosolis.cd += #math weapon.pyrosolis.cd