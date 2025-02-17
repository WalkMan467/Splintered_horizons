execute as @e[tag=hook.effect] at @s run function weapons:type/drop/hook/guide

execute if entity @e[tag=hook.effect] run schedule function weapons:type/drop/hook/loop 1t