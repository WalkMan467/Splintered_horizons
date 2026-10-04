# ===================================================
# 弓 射手座 右鍵 效果 偵測 / bow sagittarius right click effect detect

    ## Guide [ function weapons:type/bow/sagittarius/rc/effect/detect ] >>> 弓 射手座 右鍵 效果 偵測 / bow sagittarius right click effect detect
    ## Guide [ function weapons:type/bow/sagittarius/rc/effect/data ] >>> 弓 射手座 右鍵 效果 資料 / bow sagittarius right click effect data
    ## Guide [ function weapons:type/bow/sagittarius/rc/run ] >>> 弓 射手座 右鍵 執行 / bow sagittarius right click run

# ===================================================

execute \
    on origin \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"sagittarius"}] run \
return 0

data modify storage temp weapon set from entity @s weapon.components."minecraft:custom_data"."weapon"

execute \
    if data storage temp {weapon:"sagittarius"} run \
function weapons:type/bow/sagittarius/rc/effect/data

data remove storage temp weapon