## Called by 'left_click_interaction' advancement
advancement revoke @s only m_graves:left_click_interaction
tag @s add multipack.interactor
execute as @e[distance=..10,type=interaction,tag=multipack.grave] at @s on attacker if entity @s[tag=multipack.interactor] \
    as @n[distance=..0.1,type=interaction,tag=multipack.grave] run function m_graves:graves/grave_interaction
# Legacy
execute as @e[distance=..10,type=interaction,tag=multipack.grave_interaction] at @s on target if entity @s[tag=multipack.interactor] \
    as @n[distance=..0.1,type=interaction,tag=multipack.grave_interaction] run function m_graves:graves/grave_interaction
tag @s remove multipack.interactor
