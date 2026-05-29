advancement revoke @s only players:detect/in_void

execute \
    if entity @s[gamemode=spectator,tag=animation] run \
return 0

execute \
    if items entity @s armor.chest *[custom_data~{void_immunity:true}] run \
    return run \
clear @s *[custom_data~{void_immunity:true}]

execute \
    if items entity @s armor.head * run \
    return run \
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":0}}

execute \
    if items entity @s armor.chest * run \
    return run \
item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":0}}

execute \
    if items entity @s armor.legs * run \
    return run \
item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":0}}

execute \
    if items entity @s armor.feet * run \
    return run \
item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"players:effect/void_immunity":0}}