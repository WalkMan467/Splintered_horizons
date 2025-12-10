execute store result score &grave_count mp.temp if entity @e[type=interaction,tag=multipack.grave]
execute as @e[type=interaction,tag=multipack.grave] at @s run function m_graves:graves/open_grave
tellraw @s [{text:"> Opened ",color:"yellow"},{score:{name:"&grave_count",objective:"mp.temp"},color:"yellow"},{text:" grave(s). ",color:"yellow"}]
scoreboard players reset &grave_count mp.temp
# Legacy
execute as @e[tag=multipack.grave_interaction] at @s run function m_graves:graves/open_grave
execute as @e[tag=multipack.grave_marker] at @s run function m_graves:graves/open_grave
