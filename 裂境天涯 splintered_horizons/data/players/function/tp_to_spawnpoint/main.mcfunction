execute if score @s player.detect.quick_actions.trigger matches 1 run function players:tp_to_spawnpoint/use

scoreboard players enable @a player.detect.quick_actions.trigger
scoreboard players set @a player.detect.quick_actions.trigger 0