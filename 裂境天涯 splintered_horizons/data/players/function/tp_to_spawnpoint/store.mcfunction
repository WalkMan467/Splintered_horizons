execute unless entity @s[type=player] run return 0

execute store result storage minecraft:player.data spawnpoint.x int 1 run scoreboard players get @s player.spawnpoint.pos.x
execute store result storage minecraft:player.data spawnpoint.y int 1 run scoreboard players get @s player.spawnpoint.pos.y
execute store result storage minecraft:player.data spawnpoint.z int 1 run scoreboard players get @s player.spawnpoint.pos.z
execute if score @s player.spawnpoint.dimension matches 0 run data modify storage minecraft:player.data spawnpoint.dimension set value "minecraft:overworld"
execute if score @s player.spawnpoint.dimension matches 1 run data modify storage minecraft:player.data spawnpoint.dimension set value "minecraft:the_nether"
execute if score @s player.spawnpoint.dimension matches 2 run data modify storage minecraft:player.data spawnpoint.dimension set value "minecraft:the_end"
execute if score @s player.spawnpoint.dimension matches 3 run data modify storage minecraft:player.data spawnpoint.dimension set value "world_area:main/game_lobby"