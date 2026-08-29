# CD = 5s
scoreboard players set #math energy_infusion_stone.finality_cycle.cd 100

# GameTime + CD 計算甚麼時候轉好
scoreboard players operation @s energy_infusion_stone.finality_cycle.cd = #gametime global.main
scoreboard players operation @s energy_infusion_stone.finality_cycle.cd += #math energy_infusion_stone.finality_cycle.cd