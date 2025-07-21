execute as @s[gamemode=!spectator] if function players:actionbar/detect run function players:actionbar/mana
execute as @s[gamemode=!spectator] if function players:actionbar/detect run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.state_machine matches 1.. if score @s player.actionbar.state_machine.timer matches 1 run scoreboard players set @s player.actionbar.state_machine 0

execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run function players:actionbar/tp_book_casting
execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.shop matches 1.. run function players:actionbar/shop
execute as @s[gamemode=!spectator] if score @s player.actionbar.shop matches 1.. run return 0