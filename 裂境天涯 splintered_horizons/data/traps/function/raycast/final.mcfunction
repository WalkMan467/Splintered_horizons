execute as @p[tag=traps.target] run function traps:trigger with entity @n[distance=..1.5,type=marker,tag=traps.marker] data

scoreboard players reset #traps.raycast main.raycast