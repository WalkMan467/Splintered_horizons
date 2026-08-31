# ===================================================
# 死亡偵測 載具檢查 / death detect has vehicle

    ## Guide [ function monsters:detect_kill/has_vehicle ] >>> 死亡偵測 載具檢查 / death detect has vehicle
    ## Guide [ function monsters:detect_kill/loop ] >>> 死亡偵測 迴圈 / death detect loop

# ===================================================

# 執行者 : 死亡偵測 Marker
# 有載具就回傳 1，沒有的話整支函數不會執行到任何指令，結果是 0


execute \
    on vehicle run \
return 1
