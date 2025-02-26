execute as @e[type=marker,tag=hook.effect.point] at @s run function weapons:type/drop/hook/point/guide

execute if entity @n[type=marker,tag=hook.effect.point] run schedule function weapons:type/drop/hook/point/loop 1t