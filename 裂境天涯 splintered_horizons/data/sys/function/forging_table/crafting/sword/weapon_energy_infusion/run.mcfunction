execute if entity @s[tag=!sys.forging_table.crafted_item.energy_infusion.failure] if predicate sys:forging_table/crafting/have_energy_infusion at @s run function sys:forging_table/crafting/sword/weapon_energy_infusion/failure
execute if predicate sys:forging_table/crafting/have_energy_infusion run return 0

tag @s add sys.forging_table.crafted_item.energy_infusion.target

execute as @n[distance=..3,predicate=sys:forging_table/crafting/sword/general/weapon_energy_infusion,type=item] run function sys:forging_table/crafting/sword/weapon_energy_infusion/get

data modify entity @s Motion[1] set value 0.375
data modify entity @s PickupDelay set value 0s