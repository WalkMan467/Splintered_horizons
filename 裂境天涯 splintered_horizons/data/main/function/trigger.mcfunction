# execute if score @s main.trigger matches 1 run gamerule doDaylightCycle false
# execute if score @s main.trigger matches 1 run time set midnight

# execute if score @s main.trigger matches 2 run gamerule doDaylightCycle true

# execute if score @s main.trigger matches 3 run gamerule doDaylightCycle false
# execute if score @s main.trigger matches 3 run time set day

execute if score #graves mp.settings matches 1 if score @s main.tombstone_sys matches 2 run tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.game_settings.5","fallback":"關閉了墓碑系統！","color":"dark_red"}]
execute if score @s main.tombstone_sys matches 2 run scoreboard players set #graves mp.settings 0

execute if score #graves mp.settings matches 0 if score @s main.tombstone_sys matches 1 run tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.game_settings.4","fallback":"開啟了墓碑系統！","color":"dark_green"}]
execute if score @s main.tombstone_sys matches 1 run scoreboard players set #graves mp.settings 1

scoreboard players enable @s main.trigger
scoreboard players set @s main.trigger 0

scoreboard players enable @a main.tombstone_sys
scoreboard players set @a main.tombstone_sys 0