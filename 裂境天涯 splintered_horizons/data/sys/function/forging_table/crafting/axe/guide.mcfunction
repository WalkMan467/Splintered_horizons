# Wind Sword

execute \
    if score #sys.forging_table.earthquake_axe sys.forging_table.recipes matches 1.. \
    if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/axe/earthquake_axe/finality_ingot,type=item] run \
function sys:forging_table/crafting/axe/earthquake_axe/run

function sys:forging_table/crafting/general/weapon_energy_infusion