# 執行者是死亡偵測 Marker，載具是剛死掉的那隻怪

    ## Guide [ function monsters:detect_kill/marker ] >>> marker

    ## Guide [ function monsters:detect_kill/kill_monster ] >>> kill monster

    ## Guide [ function monsters:detect_kill/run ] >>> run


data modify storage death_temp name set from entity @s data.Death

execute \
    on vehicle \
    if entity @p[distance=..60] run \
function monsters:detect_kill/run with storage death_temp
