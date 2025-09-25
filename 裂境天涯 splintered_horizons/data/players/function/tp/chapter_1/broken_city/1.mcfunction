execute if score @s player.detect.tp.trigger matches 1 run tp @s 38 64 11
execute if score @s player.detect.tp.trigger matches 1 run scoreboard players set @s player.spawnpoint.pos.x 38
execute if score @s player.detect.tp.trigger matches 1 run scoreboard players set @s player.spawnpoint.pos.y 64
execute if score @s player.detect.tp.trigger matches 1 run scoreboard players set @s player.spawnpoint.pos.z 11
execute if score @s player.detect.tp.trigger matches 1 run scoreboard players set @s player.spawnpoint.dimension 0


scoreboard players set @s player.detect.tp.trigger 0
scoreboard players enable @s player.detect.tp.trigger