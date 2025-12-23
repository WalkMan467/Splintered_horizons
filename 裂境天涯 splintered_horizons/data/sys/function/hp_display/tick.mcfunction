# If strict, only apply to tagged entities

execute if score .strict hp_display matches 0 as @e[type=!#minecraft:dummy_mob,nbt={HurtTime:9s}] at @s run function sys:hp_display/update
execute if score .strict hp_display matches 1 as @e[type=!#minecraft:dummy_mob,tag=hp_display,nbt={HurtTime:9s}] at @s run function sys:hp_display/update