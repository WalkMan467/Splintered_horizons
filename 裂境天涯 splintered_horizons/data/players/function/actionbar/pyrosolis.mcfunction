# ===================================================
# 地獄之火 actionbar / pyrosolis actionbar

    ## Guide [ function players:actionbar/pyrosolis ] >>> 地獄之火 actionbar / pyrosolis actionbar
    ## Guide [ function players:actionbar/main ] >>> players:actionbar main

    ## 執行者 : 玩家
    ## 顯示【末日】層數 ; 在【激活】型態時前面多一個標記，提醒可以吐強化版

# ===================================================

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

execute \
    unless score @s weapon.pyrosolis.state matches 1 run \
title @s actionbar [{"text":"🔥 ","color":"#ff5100"},{"translate":"weapon.pyrosolis.passive.apocalypse","fallback":"末日","color":"dark_red","bold":true},{"text":" ","color":"white","bold":false},{"score":{"name":"@s","objective":"weapon.pyrosolis.apocalypse"},"color":"gold","bold":true},{"text":" / 10","color":"gray","bold":false}]

execute \
    if score @s weapon.pyrosolis.state matches 1 run \
title @s actionbar [{"translate":"weapon.pyrosolis.state.active","fallback":"激活","color":"#ff0000","bold":true},{"text":" 🔥 ","color":"#ff5100"},{"translate":"weapon.pyrosolis.passive.apocalypse","fallback":"末日","color":"dark_red","bold":true},{"text":" ","color":"white","bold":false},{"score":{"name":"@s","objective":"weapon.pyrosolis.apocalypse"},"color":"gold","bold":true},{"text":" / 10","color":"gray","bold":false}]
