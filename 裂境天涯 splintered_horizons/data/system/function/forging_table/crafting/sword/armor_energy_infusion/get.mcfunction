data modify storage quick_enchantment:temp enchantments set from entity @s Item.components."minecraft:enchantments"

    # An advanced method is employed here, utilizing the Item_modifier command combined with Macro to dynamically modify JSON data, ensuring precise attachment of items to other items.
execute as @n[tag=system.forging_table.crafted_item.energy_infusion.target,type=item,distance=..3] at @s run function system:forging_table/crafting/sword/armor_energy_infusion/modify with storage quick_enchantment:temp

    # Remove Storage
data remove storage quick_enchantment:temp enchantments

kill @s