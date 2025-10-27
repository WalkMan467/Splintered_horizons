execute as @n[type=!player,type=!#minecraft:dummy_mob] at @s run function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:2, max:10}

advancement revoke @a only weapons:arrows/bleeding_arrow