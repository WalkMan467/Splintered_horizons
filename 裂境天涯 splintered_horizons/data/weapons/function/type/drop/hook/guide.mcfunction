
tp @s ^ ^ ^1 ~ ~
effect give @s slow_falling 2 255 true

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a

execute at @s positioned ^ ^ ^1 if entity @n[distance=..2,type=interaction,tag=weapon.hook.target] run function weapons:type/drop/hook/effect
execute at @s unless block ^ ^ ^1 #penetrate run kill @s
