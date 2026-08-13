$execute \
    if items entity @s weapon.mainhand * run \
item modify entity @s weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s weapon.mainhand * run \
return 0
$execute \
    if items entity @s weapon.offhand * run \
item modify entity @s weapon.offhand {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s weapon.offhand * run \
return 0
$execute \
    if items entity @s armor.head * run \
item modify entity @s armor.head {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s armor.head * run \
return 0
$execute \
    if items entity @s armor.chest * run \
item modify entity @s armor.chest {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s armor.chest * run \
return 0
$execute \
    if items entity @s armor.legs * run \
item modify entity @s armor.legs {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s armor.legs * run \
return 0
$execute \
    if items entity @s armor.feet * run \
item modify entity @s armor.feet {type:"minecraft:set_enchantments",enchantments:{"players:effect/ignite":$(duration)}}

execute \
    if items entity @s armor.feet * run \
return 0

$item replace entity @s armor.head with poisonous_potato[custom_data={player_ignite:1b},enchantment_glint_override=false,enchantments={"players:effect/ignite":$(duration)},equippable={slot:"head",equip_sound:"block.fire.ambient",asset_id:"air"},item_model="air",tooltip_display={hide_tooltip:true},item_name=""]