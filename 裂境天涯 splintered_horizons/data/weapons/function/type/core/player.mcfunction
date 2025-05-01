# @s = Players

execute if entity @s[tag=wind_sword.user] run function weapons:type/sword/wind_sword/main

# aquilumera
execute as @s[tag=water_sword.w_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/water
execute as @s[tag=water_sword.l_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/light