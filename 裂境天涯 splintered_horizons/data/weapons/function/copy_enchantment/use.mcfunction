
execute \
    if items entity @s weapon.offhand *[!enchantments] run \
return 0

data modify storage quick_enchantment:temp enchantments set from entity @s equipment."offhand".components."minecraft:enchantments"

function weapons:copy_enchantment/modify with storage quick_enchantment:temp

data remove storage quick_enchantment:temp enchantments