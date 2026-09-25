# Soul Tree Pickaxe

execute \
    if score #sys.forging_table.soul_tree_pickaxe sys.forging_table.recipes matches 1.. \
    if entity @n[distance=..1.5,predicate=sys:forging_table/crafting/pickaxe/soul_tree_pickaxe/holy_light_iron_ingot,type=item] run \
function sys:forging_table/crafting/pickaxe/soul_tree_pickaxe/run

function sys:forging_table/crafting/general/weapon_energy_infusion
