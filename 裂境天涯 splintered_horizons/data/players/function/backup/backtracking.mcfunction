tellraw @s[scores={backtracking=1..}] [{"text":""},{"translate":"tips.player.backtracking.1","bold":true,"color":"dark_green"},{"translate":"tips.player.backtracking.2","bold":true,"color":"dark_green"},{"text":"\n"},{"text":"\n"},{"text":"☞ ","color":"dark_gray"},{"text":"/trigger backtracking set <id>","color":"gray"}]
scoreboard players set @s backtracking 0
scoreboard players enable @s backtracking

$function players:inventory/-return {bag:"player_backup.$(backup)"}

$scoreboard players set @s player.backup $(backup)