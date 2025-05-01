scoreboard players set @s player.backup.timer 0
scoreboard players set @s backup 0
scoreboard players enable @s backup

tellraw @s[gamemode=creative] [{"text":"⚠: ","color":"green"},{"translate":"tips.player.backup.2","color":"white"}]
playsound minecraft:entity.player.levelup voice @s[gamemode=creative] ~ ~1 ~ 1 1.5

execute if score @s player.backup matches 1 run function players:inventory/-store {bag:"player_backup.1"}
execute if score @s player.backup matches 2 run function players:inventory/-store {bag:"player_backup.2"}
execute if score @s player.backup matches 3 run function players:inventory/-store {bag:"player_backup.3"}
execute if score @s player.backup matches 4 run function players:inventory/-store {bag:"player_backup.4"}
execute if score @s player.backup matches 5 run function players:inventory/-store {bag:"player_backup.5"}

summon area_effect_cloud ~ ~ ~ {Duration:6000,Tags:["player.backup.pos","summon"]}
scoreboard players operation @n[tag=summon,tag=player.backup.pos] player.id = @p player.id
scoreboard players display name @n[tag=summon,tag=player.backup.pos] player.id ["[玩家] ",{"selector": "@p"},"位置備份"]

scoreboard players add @s player.backup 1


scoreboard players set @s[scores={player.backup=5..}] player.backup 1