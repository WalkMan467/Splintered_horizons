execute as @p[tag=traps.target] run function traps:trigger with entity @n[distance=..1.5,type=marker,tag=traps.marker] data
tellraw @p[tag=traps.target] [{"translate": "tips.trap.trigger.1","color": "dark_red"}]

scoreboard players reset #traps.raycast main.raycast