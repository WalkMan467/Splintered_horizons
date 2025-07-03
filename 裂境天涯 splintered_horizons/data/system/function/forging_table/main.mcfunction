schedule function system:forging_table/main 1t

execute positioned 770 147 979 as @n[type=item,distance=..1.5,tag=!paste_item] at @s run function system:forging_table/paste_item

execute positioned 770 147 979 unless entity @n[type=item,tag=paste_item,distance=..2.5] run function system:forging_table/reset