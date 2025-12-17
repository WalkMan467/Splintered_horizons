item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.head {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.chest {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.legs {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.feet {function:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}

execute as @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] run clear @s poisonous_potato[custom_data~{motion_effect:1b}]
execute as @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] run attribute @s minecraft:gravity modifier remove no_knockup

tag @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] remove motion_effect.user