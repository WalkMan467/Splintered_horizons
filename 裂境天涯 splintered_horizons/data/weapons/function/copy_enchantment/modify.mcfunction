# Apply enchantments to the main hand item
$item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:$(enchantments),add:1b}

#　Particle & Playsound
playsound minecraft:block.grindstone.use voice @a ~ ~1 ~ 1 1
particle minecraft:enchant ~ ~0.5 ~ 0.75 0.75 0.75 0 80 normal @a
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 20 normal @a

tag @s remove sys.forging_table.crafted_item.energy_infusion.target