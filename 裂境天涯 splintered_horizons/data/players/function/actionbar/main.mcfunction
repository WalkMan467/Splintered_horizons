execute as @s[gamemode=!spectator] unless score @s player.actionbar.state_machine matches 1.. run function players:actionbar/mana

execute as @s[gamemode=!spectator] if score @s player.actionbar.state_machine matches 1.. if score @s player.actionbar.state_machine.timer matches 1 run scoreboard players set @s player.actionbar.state_machine 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.state_machine matches 1 run function players:actionbar/tp_book_casting

execute as @s[gamemode=!spectator] if score @s player.actionbar.state_machine matches 2 run function players:actionbar/black_hole