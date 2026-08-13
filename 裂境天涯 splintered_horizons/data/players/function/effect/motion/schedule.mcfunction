item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] weapon.offhand {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.head {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.chest {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.legs {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}
item modify entity @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] armor.feet {type:"minecraft:set_enchantments",enchantments:{"players:effect/motion":0}}


execute \
    as @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] run \
clear @s poisonous_potato[custom_data~{motion_effect:1b}]

execute \
    as @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] run \
attribute @s minecraft:gravity modifier remove no_knockup

tag @e[tag=motion_effect.user,limit=20,type=!#minecraft:dummy_mob] remove motion_effect.user