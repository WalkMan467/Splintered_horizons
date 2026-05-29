
execute \
    if entity @s[tag=!sys.forging_table.crafted_item.failure,predicate=sys:forging_table/crafting/is_armor,predicate=sys:forging_table/crafting/have_forging_table,type=item] at @s run \
function sys:forging_table/crafting/general/crafting_failure

execute \
    if entity @s[tag=sys.forging_table.crafted_item.failure,type=item] run \
return 0

kill @n[distance=..1.5,predicate=sys:forging_table/crafting/armor/tai_chis_shadow/phase_crystal,type=item]

function sys:forging_table/crafting/armor/tai_chis_shadow/setup