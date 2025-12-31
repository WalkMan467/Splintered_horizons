execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

execute \
    if score @s player.actionbar.tp_book.failure matches 1.. run \
return 0

execute \
    if score @s player.actionbar.weapon.nightfall matches 1.. run \
return 0

execute \
    if score @s player.actionbar.weapon.earthquake_axe matches 1.. run \
return 0

execute \
    if score @s player.actionbar.weapon.spider matches 1.. run \
return 0

execute \
    if score @s player.actionbar.otherworld_portal.1 matches 1.. run \
return 0

execute \
    if score @s player.actionbar.otherworld_portal.2 matches 1.. run \
return 0

execute \
    if score @s player.actionbar.tree_of_world_memory.1 matches 1.. run \
return 0

execute \
    if score @s player.actionbar.tree_of_world_memory.2 matches 1.. run \
return 0

execute \
    if score @s player.actionbar.sys.forging_table.failure matches 1.. run \
return 0

execute \
    if score @s player.actionbar.disabled_bed matches 1.. run \
return 0

execute \
    if score @s player.actionbar.disabled_anvil matches 1.. run \
return 0

return 1