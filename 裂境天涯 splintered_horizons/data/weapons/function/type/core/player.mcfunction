# @s = Players

# Ethereal Shatterstorm Compound Bow
execute if entity @s[tag=ethereal_shatterstorm_compound_bow.user] run function weapons:type/bow/ethereal_shatterstorm_compound_bow/rc/main

# sagittarius
execute if entity @s[tag=sagittarius.user] run function weapons:type/bow/sagittarius/rc/main

execute if entity @s[tag=zeuss_lightning.user] run function weapons:type/drop/zeuss_lightning/rc/main
execute if entity @s[tag=wind_sword.user] run function weapons:type/sword/wind_sword/main

function weapons:type/sword/otherworld_star/main

execute if entity @s[tag=twilight_wind.user] run function weapons:type/sword/twilight_wind/main

execute as @s[tag=weapon.nightfall.charger] at @s run function weapons:type/sword/nightfall/passive/dmg/main

# aquilumera
execute as @s[tag=water_sword.w_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/water
execute as @s[tag=water_sword.l_user] at @s if score @s weapon.aquilumera_passive matches 0.. run function weapons:type/sword/aquilumera/passive/light
execute unless score @s weapon.aquilumera_passive matches 1.. run tag @s[tag=water_sword.w_user] remove water_sword.w_user
execute unless score @s weapon.aquilumera_passive matches 1.. run tag @s[tag=water_sword.l_user] remove water_sword.l_user


# Nightfall
execute as @s[tag=nightfall.user] at @s if score @s weapon.nightfall.effect.switch_dmg_count matches 0.. run function weapons:type/sword/nightfall/rc/switch_dmg