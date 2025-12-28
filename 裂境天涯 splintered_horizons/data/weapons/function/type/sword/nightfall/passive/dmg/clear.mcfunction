
execute \
    as @e[type=block_display,tag=rotater] on passengers run \
scoreboard players reset @s weapon.nightfall.charge

execute \
    as @e[type=block_display,tag=rotater] on passengers run \
kill @s
scoreboard players reset @e[type=block_display,tag=rotater] weapon.nightfall.charge
kill @e[type=block_display,tag=rotater]
kill @s