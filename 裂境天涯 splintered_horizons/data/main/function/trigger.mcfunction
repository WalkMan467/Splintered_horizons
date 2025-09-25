execute if score @s main.trigger matches 1 run gamerule doDaylightCycle false
execute if score @s main.trigger matches 1 run time set midnight

execute if score @s main.trigger matches 2 run gamerule doDaylightCycle true

execute if score @s main.trigger matches 3 run gamerule doDaylightCycle false
execute if score @s main.trigger matches 3 run time set day



scoreboard players enable @s main.trigger
scoreboard players set @s main.trigger 0