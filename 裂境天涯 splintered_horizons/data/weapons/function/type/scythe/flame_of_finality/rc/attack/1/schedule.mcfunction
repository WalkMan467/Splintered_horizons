# ===================================================
# 鐮 終焉雙重火 右鍵 攻擊 階段 1 schedule / scythe flame of finality right click attack step 1 schedule

    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/attack/1/schedule ] >>> 鐮 終焉雙重火 右鍵 攻擊 階段 1 schedule / scythe flame of finality right click attack step 1 schedule
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/attack/1/motion ] >>> 鐮 終焉雙重火 右鍵 攻擊 階段 1 位移 / scythe flame of finality right click attack step 1 motion

# ===================================================

item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] weapon.offhand {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.head {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.chest {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.legs {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}
item modify entity @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] armor.feet {type:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":0}}


execute \
    as @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] run \
clear @s poisonous_potato[custom_data~{motion:"flame_of_finality"}]

execute \
    as @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] run \
attribute @s minecraft:gravity modifier remove no_knockup

tag @e[tag=weapon.flame_of_finality.rc.atk.1.motion,limit=20,type=!#minecraft:dummy_mob,distance=0..] remove weapon.flame_of_finality.rc.atk.1.motion