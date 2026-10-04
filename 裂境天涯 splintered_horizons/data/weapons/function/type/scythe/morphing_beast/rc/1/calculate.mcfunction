# ===================================================
# 鐮 變形異獸 右鍵 階段 1 計算 / scythe morphing beast right click step 1 calculate

    ## Guide [ function weapons:type/scythe/morphing_beast/rc/1/calculate ] >>> 鐮 變形異獸 右鍵 階段 1 計算 / scythe morphing beast right click step 1 calculate

# ===================================================

scoreboard players operation #temp player.max_health = @s player.health

scoreboard players set #math player.max_health 8
scoreboard players operation #temp player.max_health *= #math player.max_health