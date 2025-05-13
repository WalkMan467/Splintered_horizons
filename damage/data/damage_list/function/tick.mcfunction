
execute as @e[type=!#no_hp] at @s run function damage_list:mob-hp
execute as @e[type=text_display,tag=hurttext] at @s run function damage_list:text