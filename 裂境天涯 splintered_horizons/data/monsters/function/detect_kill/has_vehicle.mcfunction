# 執行者 : 死亡偵測 Marker
# 有載具就回傳 1，沒有的話整支函數不會執行到任何指令，結果是 0

    ## Guide [ function monsters:detect_kill/has_vehicle ] >>> has vehicle

    ## Guide [ function monsters:detect_kill/loop ] >>> loop


execute \
    on vehicle run \
return 1
