scoreboard players add @a[scores={player.mana=..19}] player.mana 1
scoreboard players add @a[scores={player.backup.timer=0..}] player.backup.timer 1

execute if score @s player.ultimate matches 1.. run scoreboard players remove @s player.ultimate 1

execute as @a at @s run function players:backup/main