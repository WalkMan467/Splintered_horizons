# If strict, only apply to tagged entities

execute if score .strict hp_display matches 0 as @e[type=!#hp_display:no_hp,nbt={HurtTime:9s}] at @s run function hp_display:update
execute if score .strict hp_display matches 1 as @e[type=!#hp_display:no_hp,tag=hp_display,nbt={HurtTime:9s}] at @s run function hp_display:update