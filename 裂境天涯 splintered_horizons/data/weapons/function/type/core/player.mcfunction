# @s = Players

execute if entity @s[tag=wind_sword.user] run function weapons:type/sword/wind_sword/main

execute if entity @s[tag=twilight_wind.user] run function weapons:type/sword/twilight_wind/main

execute as @s[tag=weapon.nightfall.charger] at @s run function weapons:type/sword/nightfall/passive/dmg/main

# aquilumera
execute as @s[tag=water_sword.w_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/water
execute as @s[tag=water_sword.l_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/light

# Nightfall
execute as @s[tag=nightfall.user] at @s if score @s weapon.nightfall.effect.switch_dmg_count matches 0.. run function weapons:type/sword/nightfall/rc/switch_dmg