execute as @e[tag=broken_glass.effect] at @s run function weapons:type/drop/broken_glass/guide

execute if entity @e[tag=broken_glass.effect] run schedule function weapons:type/drop/broken_glass/loop 1t