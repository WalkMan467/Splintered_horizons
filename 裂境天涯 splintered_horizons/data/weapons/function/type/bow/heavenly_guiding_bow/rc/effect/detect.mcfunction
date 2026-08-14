# ===================================================
# 天導神弓 右鍵 效果 偵測 / heavenly guiding bow right click effect detect

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/effect/detect ] >>> 天導神弓 右鍵 效果 偵測 / heavenly guiding bow right click effect detect
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/effect/data ] >>> 天導神弓 右鍵 效果 資料 / heavenly guiding bow right click effect data
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/run ] >>> 天導神弓 右鍵 執行 / heavenly guiding bow right click run

# ===================================================

execute \
    on origin \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"heavenly_guiding_bow"}] run \
return 0

data modify storage temp weapon set from entity @s weapon.components."minecraft:custom_data"."weapon"

execute \
    if data storage temp {weapon:"heavenly_guiding_bow"} run \
function weapons:type/bow/heavenly_guiding_bow/rc/effect/data

data remove storage temp weapon