
execute \
    if items entity @s weapon.mainhand * run \
item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s weapon.mainhand * run \
return 0


execute \
    if items entity @s weapon.offhand * run \
item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s weapon.offhand * run \
return 0


execute \
    if items entity @s armor.head * run \
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s armor.head * run \
return 0


execute \
    if items entity @s armor.chest * run \
item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s armor.chest * run \
return 0


execute \
    if items entity @s armor.legs * run \
item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s armor.legs * run \
return 0


execute \
    if items entity @s armor.feet * run \
item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":1}}


execute \
    if items entity @s armor.feet * run \
return 0

item replace entity @s armor.head with poisonous_potato[enchantments={"players:effect/motion":2},enchantment_glint_override=false,tooltip_display={},equippable={slot:"head",asset_id:"air"},item_model="air",custom_data={motion_effect:1b}]