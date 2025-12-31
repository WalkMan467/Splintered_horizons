execute \
    if score #sys.forging_table.swift_boots sys.forging_table.recipes matches 1.. \
    if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/armor/swift_boots/dust_of_the_wind,type=item] run \
function sys:forging_table/crafting/armor/swift_boots/run

function sys:forging_table/crafting/general/armor_energy_infusion