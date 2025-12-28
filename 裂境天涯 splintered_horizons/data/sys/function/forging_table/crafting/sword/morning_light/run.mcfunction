
execute \
    if entity @s[tag=!sys.forging_table.crafted_item.failure,predicate=sys:forging_table/crafting/sword/general/is_weapon,predicate=sys:forging_table/crafting/have_forging_table,type=item] at @s run \
function sys:forging_table/crafting/general/crafting_failure

execute \
    if entity @s[tag=sys.forging_table.crafted_item.failure,type=item] run \
return 0

kill @n[distance=..1.5,predicate=sys:forging_table/crafting/sword/morning_light/holy_light_iron_ingot,type=item]

function sys:forging_table/crafting/sword/morning_light/setup