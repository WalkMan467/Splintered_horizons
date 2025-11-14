function players:elytra_switch/main
function players:detect/main
function players:auto_crafting/main

tag @s remove player.tombstone_system.disabled

execute if score @s player.give.item.delay matches 1 run function players:give_item

# Smooth walking of blocks
execute unless predicate players:detect/input/sneak run attribute @s step_height base set 1
execute unless block ~ ~-1 ~ scaffolding run attribute @s step_height base set 1
execute if predicate players:detect/input/sneak run attribute @s step_height base reset
execute if block ~ ~-1 ~ scaffolding run attribute @s step_height base reset

execute if block ~ ~ ~ water unless block ~ ~1 ~ water run attribute @s water_movement_efficiency base set 1
execute if block ~ ~ ~ water if block ~ ~1 ~ water run attribute @s water_movement_efficiency base reset


scoreboard players set @s[scores={player.ultimate=2..,player.no_cd=1..}] player.ultimate 1

execute unless score @s player.ultimate matches 0.. run scoreboard players set @s player.ultimate 0