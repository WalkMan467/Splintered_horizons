# ===================================================
# 劍 夜幕 右鍵 階段 1 計算 / sword nightfall right click step 1 calculate

    ## Guide [ function weapons:type/sword/nightfall/rc/1/calculate ] >>> 劍 夜幕 右鍵 階段 1 計算 / sword nightfall right click step 1 calculate
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/1/effect ] >>> 鐮 變形異獸 右鍵 階段 1 效果 / scythe morphing beast right click step 1 effect
    ## Guide [ function weapons:type/sword/nightfall/rc/1/effect ] >>> 劍 夜幕 右鍵 階段 1 效果 / sword nightfall right click step 1 effect

# ===================================================

scoreboard players operation #temp player.max_health = @s player.health

scoreboard players set #math player.max_health 8
scoreboard players operation #temp player.max_health *= #math player.max_health