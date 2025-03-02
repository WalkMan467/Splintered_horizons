
tp @s ^ ^ ^1 ~ ~
effect give @s slow_falling 2 255 true

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a

execute at @s unless block ^ ^ ^1 #air run function weapons:type/drop/hook/effect