execute positioned 770 148 979 run advancement grant @a[distance=..8] only system:forging_table/tips/main

execute positioned 770 148 979 as @n[tag=!system.forging_table.item,type=item,distance=..2] run function system:forging_table/tp

# Wooden Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/wooden_sword] run function system:forging_table/crafting/general/energy_infusion

# Stone Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/stone_sword] run function system:forging_table/guide

# Copper Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/copper_sword] run function system:forging_table/crafting/general/energy_infusion

# Iron Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/iron_sword] run function system:forging_table/crafting/general/energy_infusion

# Golden Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/golden_sword] run function system:forging_table/crafting/general/energy_infusion

# Diamond Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/diamond_sword] run function system:forging_table/crafting/general/energy_infusion

# Netherite Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/netherite_sword] run function system:forging_table/crafting/general/energy_infusion

schedule function system:forging_table/main 1t