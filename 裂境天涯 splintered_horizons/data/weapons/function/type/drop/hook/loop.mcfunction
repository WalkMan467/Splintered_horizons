# 鉤子導向
execute as @e[type=item_display,tag=hook.effect] at @s run function weapons:type/drop/hook/guide

execute if entity @n[type=item_display,tag=hook.effect] run schedule function weapons:type/drop/hook/loop 1t