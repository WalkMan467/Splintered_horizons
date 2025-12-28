
execute \
    as @p[tag=trap.target] run \
function trap:trigger with entity @n[distance=..1.5,type=marker,tag=trap.marker] data
tellraw @p[tag=trap.target] [{"translate": "tips.trap.trigger.1","color": "dark_red"}]

scoreboard players reset #trap.raycast main.raycast