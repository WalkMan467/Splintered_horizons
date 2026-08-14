# ===================================================
# 劍 夜幕 偵測 / sword nightfall detect

    ## Guide [ function weapons:type/sword/nightfall/detect ] >>> 劍 夜幕 偵測 / sword nightfall detect
    ## Guide [ function players:detect/inventory_changed ] >>> 偵測 inventory changed / detect inventory changed

# ===================================================

scoreboard players add @s weapon.nightfall.state 0


execute \
    if items entity @s weapon.mainhand *[custom_data~{state:0b}] run \
scoreboard players set @s weapon.nightfall.state 0

execute \
    if items entity @s weapon.mainhand *[custom_data~{state:1b}] run \
scoreboard players set @s weapon.nightfall.state 1