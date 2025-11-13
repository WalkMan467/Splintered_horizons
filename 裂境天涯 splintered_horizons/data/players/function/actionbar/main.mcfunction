execute as @s[gamemode=!spectator] if function players:actionbar/detect run function players:actionbar/mana
execute as @s[gamemode=!spectator] if function players:actionbar/detect run return 0

execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run function players:actionbar/tp_book_casting
execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.system.forging_table.energy_infusion_failure matches 1.. run function players:actionbar/energy_infusion_failure
execute as @s[gamemode=!spectator] if score @s player.actionbar.system.forging_table.energy_infusion_failure matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.nightfall matches 1.. run function players:actionbar/nightfall
execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.nightfall matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.spider matches 1.. run function players:actionbar/spider
execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.spider matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.2 matches 1.. run function players:actionbar/otherworld_portal_2
execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.2 matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run function players:actionbar/tree_of_world_memory_2
execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.1 matches 1.. run function players:actionbar/tree_of_world_memory_1
execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run return 0
