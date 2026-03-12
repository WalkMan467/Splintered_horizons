data modify storage mob_item_model equipment set value {mainhand:"",offhand:""}

execute \
    if items entity @s weapon.mainhand * run \
data modify storage mob_item_model equipment.mainhand set from entity @s equipment.mainhand.components."minecraft:item_model"

execute \
    if items entity @s weapon.offhand * run \
data modify storage mob_item_model equipment.offhand set from entity @s equipment.offhand.components."minecraft:item_model"

execute \
    if data storage mob_item_model {equipment:{mainhand:""}} run \
data modify storage mob_item_model equipment.mainhand set value "minecraft:air"

execute \
    if data storage mob_item_model {equipment:{offhand:""}} run \
data modify storage mob_item_model equipment.offhand set value "minecraft:air"