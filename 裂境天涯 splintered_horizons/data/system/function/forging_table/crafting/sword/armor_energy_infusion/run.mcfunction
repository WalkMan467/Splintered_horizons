execute if entity @s[tag=!system.forging_table.crafted_item.energy_infusion.failure] if predicate system:forging_table/crafting/have_energy_infusion at @s run function system:forging_table/crafting/sword/armor_energy_infusion/failure
execute if predicate system:forging_table/crafting/have_energy_infusion run return 0

tag @s add system.forging_table.crafted_item.energy_infusion.target

execute as @n[distance=..3,predicate=system:forging_table/crafting/sword/general/armor_energy_infusion,type=item] run function system:forging_table/crafting/sword/armor_energy_infusion/get

data modify entity @s Motion[1] set value 0.375
data modify entity @s PickupDelay set value 0s