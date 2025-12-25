# Wind Sword
execute if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/wind_sword/dust_of_the_wind,type=item] run function sys:forging_table/crafting/sword/wind_sword/run

# Nightfall

execute if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/nightfall/moonlight_star,type=item] run function sys:forging_table/crafting/sword/nightfall/run

# Morning Light
execute if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/morning_light/holy_light_iron_ingot,type=item] run function sys:forging_table/crafting/sword/morning_light/run

# Twilight Wind
execute if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/twilight_wind/dust_of_the_wind,type=item] run function sys:forging_table/crafting/sword/twilight_wind/run

# Rock Crushing Greatsword
execute if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/rock_crushing_greatsword/rockbound_crystal,type=item] run function sys:forging_table/crafting/sword/rock_crushing_greatsword/run

function sys:forging_table/crafting/general/weapon_energy_infusion