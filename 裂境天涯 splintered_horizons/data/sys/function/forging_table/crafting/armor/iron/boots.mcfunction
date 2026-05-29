execute \
    if score #sys.forging_table.blackhole_boots sys.forging_table.recipes matches 1.. \
    if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/armor/blackhole_boots/phase_crystal,type=item] run \
function sys:forging_table/crafting/armor/blackhole_boots/run

function sys:forging_table/crafting/general/armor_energy_infusion