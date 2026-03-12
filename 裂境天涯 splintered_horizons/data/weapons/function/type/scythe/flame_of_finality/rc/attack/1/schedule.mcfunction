item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.head {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.chest {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.legs {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.feet {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}


execute \
    as @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] run \
clear @s poisonous_potato[custom_data~{motion:"flame_of_finality"}]

execute \
    as @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] run \
attribute @s minecraft:gravity modifier remove no_knockup

tag @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] remove weapon.flame_of_finality.rc.atk.1.motion