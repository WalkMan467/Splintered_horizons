# ===================================================
# 天導神弓 右鍵 charging complete / heavenly guiding bow right click charging complete

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/charging_complete ] >>> 天導神弓 右鍵 charging complete / heavenly guiding bow right click charging complete
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/fx ] >>> 天導神弓 右鍵 特效 / heavenly guiding bow right click visuals
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/use ] >>> 天導神弓 右鍵 觸發 / heavenly guiding bow right click activate

# ===================================================

playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 normal @a
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1

attribute @s movement_speed modifier add weapon.heavenly_guiding_bow.charging_complete -0.25 add_multiplied_base

execute \
    rotated ~ 0 run \
function weapons:type/bow/heavenly_guiding_bow/rc/fx