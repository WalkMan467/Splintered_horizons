execute if biome ~ ~ ~ #world_area:disable_backup run return 0

execute if score @s player.backup.timer matches 590 run tellraw @s[gamemode=creative] [{"text":"⚠: ","color":"gold"},{"translate":"tips.player.backup.1","color":"white"}]
execute if score @s player.backup.timer matches 600.. run function players:backup/use