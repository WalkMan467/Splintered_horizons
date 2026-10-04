# ===================================================
# 死亡偵測 Marker / death detect marker

    ## Guide [ function monsters:detect_kill/marker ] >>> 死亡偵測 Marker / death detect marker
    ## Guide [ function monsters:detect_kill/kill_monster ] >>> 死亡偵測 擊殺處理 / death detect kill monster
    ## Guide [ function monsters:detect_kill/run ] >>> 死亡偵測 執行 BOSS 重置 / death detect run boss reset

# ===================================================

# 執行者是死亡偵測 Marker，載具是剛死掉的那隻怪


data modify storage death_temp name set from entity @s data.Death

execute \
    on vehicle \
    if entity @p[distance=..60] run \
function monsters:detect_kill/run with storage death_temp
