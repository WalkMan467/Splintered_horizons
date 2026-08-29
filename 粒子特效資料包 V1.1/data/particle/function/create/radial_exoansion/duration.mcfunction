# CD = 5s
scoreboard players set #math particle.global.main 100

# GameTime + CD 計算甚麼時候轉好
scoreboard players operation @s particle.radial_exoansion.duration = .gametime particle.global.main
scoreboard players operation @s particle.radial_exoansion.duration += #math particle.global.main