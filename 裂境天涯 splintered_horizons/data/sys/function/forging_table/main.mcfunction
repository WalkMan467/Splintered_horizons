execute positioned 770 148 979 run advancement grant @a[distance=..8] only sys:forging_table/tips/main

execute positioned 770 148 979 as @n[tag=!sys.forging_table.item,type=item,distance=..2] run function sys:forging_table/tp

# Wooden Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/wooden_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# Stone Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/stone_sword] run function sys:forging_table/guide

# Copper Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/copper_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# Iron Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/iron_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# Golden Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/golden_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# Diamond Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/diamond_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# Netherite Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/netherite_sword] run function sys:forging_table/crafting/general/weapon_energy_infusion

# ===================================

# Leather Helmet
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/leather_helmet] run function sys:forging_table/crafting/general/armor_energy_infusion

# Leather Chestplate
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/leather_chestplate] run function sys:forging_table/crafting/general/armor_energy_infusion

# Leather Leggings
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/leather_leggings] run function sys:forging_table/crafting/general/armor_energy_infusion

# Leather Boots
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/leather_boots] run function sys:forging_table/crafting/general/armor_energy_infusion

# Other Armor
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=sys:forging_table/crafting/sword/general/other_armor] run function sys:forging_table/crafting/general/armor_energy_infusion

schedule function sys:forging_table/main 1t