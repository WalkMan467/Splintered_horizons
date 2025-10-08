tag @n[type=minecraft:item,tag=enchanted_book,tag=paste_item,distance=..2.5] add system.forging_table.fusion.enchanted_book
data modify entity @s Item.components."minecraft:enchantments" merge from entity @n[type=minecraft:item,tag=system.forging_table.fusion.enchanted_book,distance=..2.5] Item.components."minecraft:stored_enchantments"

kill @n[type=minecraft:item,tag=system.forging_table.fusion.enchanted_book,distance=..2.5]

data modify entity @s PickupDelay set value 0s