advancement revoke @s only players:detect/out_void

execute \
    if entity @s[gamemode=spectator,tag=animation] run \
return 0

execute \
    if items entity @s armor.head * run \
    return run \
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":1}}

execute \
    if items entity @s armor.chest * run \
    return run \
item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":1}}

execute \
    if items entity @s armor.legs * run \
    return run \
item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":1}}

execute \
    if items entity @s armor.feet * run \
    return run \
item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":1}}

item replace entity @s armor.chest with music_disc_11[equippable={slot:"chest",asset_id:"air"},enchantment_glint_override=false,enchantments={"players:effect/void_immunity":1,"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={void_immunity:true},item_model="air",item_name=""] 1