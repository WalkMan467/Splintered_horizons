execute as @s[gamemode=!creative] if function players:actionbar/detect/runes run function players:actionbar/runes
execute as @s[gamemode=!creative] if function players:actionbar/detect/runes run return 0

execute if score @s player.actionbar.eye_of_finality matches 1.. if function players:actionbar/detect/finality run function players:actionbar/eye_of_finality
execute if score @s player.actionbar.eye_of_finality matches 1.. if function players:actionbar/detect/finality run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.disabled_bed matches 1.. run function players:actionbar/disabled_bed
execute as @s[gamemode=!spectator] if score @s player.actionbar.disabled_bed matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.disabled_anvil matches 1.. run function players:actionbar/disabled_anvil
execute as @s[gamemode=!spectator] if score @s player.actionbar.disabled_anvil matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run function players:actionbar/tp_book_casting
execute as @s[gamemode=!spectator] if score @s item.tp_book.casting matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.sys.forging_table.failure matches 1.. run function players:actionbar/forging_table_failure
execute as @s[gamemode=!spectator] if score @s player.actionbar.sys.forging_table.failure matches 1.. run return 0

execute if score @s player.actionbar.weapon.earthquake_axe matches 1.. run function players:actionbar/earthquake_axe
execute if score @s player.actionbar.weapon.earthquake_axe matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.nightfall matches 1.. run function players:actionbar/nightfall
execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.nightfall matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.spider matches 1.. run function players:actionbar/spider
execute as @s[gamemode=!spectator] if score @s player.actionbar.weapon.spider matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.2 matches 1.. run function players:actionbar/otherworld_portal_2
execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.2 matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.1 matches 1.. run function players:actionbar/otherworld_portal_1
execute as @s[gamemode=!spectator] if score @s player.actionbar.otherworld_portal.1 matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run function players:actionbar/tree_of_world_memory_2
execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run return 0

execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.1 matches 1.. run function players:actionbar/tree_of_world_memory_1
execute as @s[gamemode=!spectator] if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run return 0