# ===================================================
# 天導神弓 右鍵 執行 / heavenly guiding bow right click run

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/run ] >>> 天導神弓 右鍵 執行 / heavenly guiding bow right click run
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/effect/detect ] >>> 天導神弓 右鍵 效果 偵測 / heavenly guiding bow right click effect detect
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/main ] >>> 天導神弓 右鍵 主迴圈 / heavenly guiding bow right click loop

# ===================================================

execute \
    as @e[sort=arbitrary,distance=..5,type=#arrows] at @s run \
function weapons:type/bow/heavenly_guiding_bow/rc/effect/detect

attribute @s movement_speed modifier remove weapon.heavenly_guiding_bow.charging_complete

execute \
    if items entity @s weapon.mainhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.mainhand weapons:type/bow/heavenly_guiding_bow/0

execute \
    if items entity @s weapon.offhand bow[custom_data~{weapon:"heavenly_guiding_bow"}] run \
item modify entity @s weapon.offhand weapons:type/bow/heavenly_guiding_bow/0