# execute if score @s main.trigger matches 1 run gamerule doDaylightCycle false
# execute if score @s main.trigger matches 1 run time set midnight

# execute if score @s main.trigger matches 2 run gamerule doDaylightCycle true

# execute if score @s main.trigger matches 3 run gamerule doDaylightCycle false
# execute if score @s main.trigger matches 3 run time set day

execute if score #tombstone_system global.main matches 1 if score @s main.tombstone_system matches 2 run tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.game_settings.5","fallback":"關閉了墓碑系統！","color":"dark_red"}]
execute if score @s main.tombstone_system matches 2 run scoreboard players set #tombstone_system global.main 0

execute if score #tombstone_system global.main matches 0 if score @s main.tombstone_system matches 1 run tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"tips.main.game_settings.4","fallback":"開啟了墓碑系統！","color":"dark_green"}]
execute if score @s main.tombstone_system matches 1 run scoreboard players set #tombstone_system global.main 1

scoreboard players enable @s main.trigger
scoreboard players set @s main.trigger 0

scoreboard players enable @a main.tombstone_system
scoreboard players set @a main.tombstone_system 0