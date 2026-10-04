# ===================================================
# 天導神弓箭矢 箭矢落地偵測 / heavenly guiding arrow ground detect

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/ground_detect ] >>> 天導神弓箭矢 箭矢落地偵測 / heavenly guiding arrow ground detect
    ## Guide [ function sys:dummy_mob/interface ] >>> dummy mob interface / dummy mob interface
    ## Guide [ function weapons:type/arrows/ground_detect/run ] >>> 箭矢落地偵測 執行 / arrow ground detect run

# ===================================================

function sys:dummy_mob/interface

tag @s add temp

damage @n[distance=..3,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#arrows,type=!player] 5 arrow by @n[sort=arbitrary,distance=..3,tag=temp,type=#arrows]

tag @s remove temp