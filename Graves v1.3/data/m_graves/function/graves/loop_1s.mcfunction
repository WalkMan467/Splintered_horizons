## Loop every second. Open graves older than `#graves.despawn_seconds` seconds and place graves at dead players
schedule function m_graves:graves/loop_1s 1s
scoreboard players add $current_seconds mp.graves 1
scoreboard players add $unlock_seconds mp.graves 1
execute if score #graves.despawn mp.settings matches 1 as @e[type=interaction,tag=multipack.grave] at @s if score @s mp.persist <= $current_seconds mp.graves run function m_graves:graves/open_grave
execute if score #graves.auto_unlock mp.settings matches 1 as @e[type=interaction,tag=multipack.grave.locked] if score @s mp.persist <= $unlock_seconds mp.graves run tag @s remove multipack.grave.locked
execute as @e[type=player,tag=multipack.grave.dead] run function m_graves:graves/on_respawn
