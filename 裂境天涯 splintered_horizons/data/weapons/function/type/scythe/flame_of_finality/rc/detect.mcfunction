# ===================================================
# 鐮 終焉雙重火 右鍵 偵測 / scythe flame of finality right click detect

    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/detect ] >>> 鐮 終焉雙重火 右鍵 偵測 / scythe flame of finality right click detect
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/use ] >>> 鐮 終焉雙重火 右鍵 觸發 / scythe flame of finality right click activate

# ===================================================

execute \
    if score @s player.finality_tunder matches 1.. run \
return 1

execute \
    unless score @s player.finality_tunder matches 1.. \
    if score @s player.ultimate matches 1.. run \
return 0

execute \
    unless score @s player.finality_tunder matches 1.. \
    unless score @s player.ultimate matches 1.. run \
return 1