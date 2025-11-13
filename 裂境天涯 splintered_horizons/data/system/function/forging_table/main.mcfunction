execute positioned 770 148 979 run advancement grant @a[distance=..8] only system:forging_table/tips/main

execute positioned 770 148 979 as @n[tag=!system.forging_table.item,type=item,distance=..2] run function system:forging_table/tp

# Stone Sword
execute positioned 770 148 979 as @n[distance=..1.5,type=item,predicate=system:forging_table/crafting/sword/general/stone_sword] run function system:forging_table/guide

schedule function system:forging_table/main 1t