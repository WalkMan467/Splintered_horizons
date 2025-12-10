execute store result score &grave_count mp.temp if entity @e[type=interaction,tag=multipack.grave]
execute if score &grave_count mp.temp matches 0 run tellraw @s {text:"> No graves opened. ", color:"red"}
execute if score &grave_count mp.temp matches 1 run tellraw @s {text:"> Opened a grave. ", color:"yellow"}
execute as @n[type=interaction,tag=multipack.grave] at @s run function m_graves:graves/open_grave
scoreboard players reset &grave_count mp.temp
# Legacy
execute as @n[tag=multipack.grave_interaction] at @s run function m_graves:graves/open_grave
execute as @n[tag=multipack.grave_marker] at @s run function m_graves:graves/open_grave
