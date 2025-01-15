scoreboard players set @s player.backup.timer 0

tellraw @s [{"text":"⚠: ","color":"green"},{"text":"備份成功！","color":"white"}]
playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5

execute if score @s player.backup matches 1 run function players:inventory/-store {bag:"player_backup.1"}
execute if score @s player.backup matches 2 run function players:inventory/-store {bag:"player_backup.2"}
execute if score @s player.backup matches 3 run function players:inventory/-store {bag:"player_backup.3"}
execute if score @s player.backup matches 4 run function players:inventory/-store {bag:"player_backup.4"}
execute if score @s player.backup matches 5 run function players:inventory/-store {bag:"player_backup.5"}

scoreboard players add @s player.backup 1


scoreboard players set @s[scores={player.backup=5..}] player.backup 1