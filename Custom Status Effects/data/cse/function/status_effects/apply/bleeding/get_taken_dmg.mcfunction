execute store result score @s cse.detect.player.max_health run attribute @s max_health get

scoreboard players operation @s cse.detect.player.max_health -= @s cse.detect.player.health

execute unless score #cse.status_effects.apply.dot? cse.global.main matches 1.. if score @s cse.status_effects.bleeding.dot <= @s cse.status_effects.bleeding.dot_max run scoreboard players operation @s cse.status_effects.bleeding.dot += @s cse.detect.player.max_health
execute unless score #cse.status_effects.apply.dot? cse.global.main matches 1.. if score @s cse.status_effects.bleeding.dot > @s cse.status_effects.bleeding.dot_max run scoreboard players operation @s cse.status_effects.bleeding.dot = @s cse.status_effects.bleeding.dot_max

scoreboard players reset #cse.status_effects.apply.dot? cse.global.main