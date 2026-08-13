execute \
    if items entity @s weapon.mainhand * run \
item modify entity @s weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s weapon.mainhand * run \
return 0


execute \
    if items entity @s weapon.offhand * run \
item modify entity @s weapon.offhand {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s weapon.offhand * run \
return 0


execute \
    if items entity @s armor.head * run \
item modify entity @s armor.head {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s armor.head * run \
return 0


execute \
    if items entity @s armor.chest * run \
item modify entity @s armor.chest {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s armor.chest * run \
return 0


execute \
    if items entity @s armor.legs * run \
item modify entity @s armor.legs {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s armor.legs * run \
return 0


execute \
    if items entity @s armor.feet * run \
item modify entity @s armor.feet {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":1}}


execute \
    if items entity @s armor.feet * run \
return 0

item replace entity @s armor.head with poisonous_potato[enchantments={"sys:zipline_platform/motion":1},enchantment_glint_override=false,tooltip_display={},equippable={slot:"head",asset_id:"air"},item_model="air",custom_data={motion_effect:1b}]