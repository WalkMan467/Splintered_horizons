scoreboard players add @a[scores={player.mana=..21}] player.mana 1
scoreboard players add @a[scores={player.backup.timer=0..}] player.backup.timer 1

execute if score #global player.ultimate matches 1.. run scoreboard players remove #global player.ultimate 1

execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function players:backup/main