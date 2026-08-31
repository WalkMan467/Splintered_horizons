# ===================================================
# 凍結 孤兒冰塊 單維度處理 / freeze orphan dimension

    ## Guide [ function monsters:generic/freeze/orphan/dimension ] >>> 凍結 孤兒冰塊 單維度處理 / freeze orphan dimension
    ## Guide [ function monsters:generic/freeze/orphan/scan ] >>> 凍結 孤兒冰塊 逐維度掃描 / freeze orphan scan
    ## Guide [ function monsters:generic/freeze/orphan/detect ] >>> 凍結 孤兒冰塊 判定 / freeze orphan detect

# ===================================================

# 執行者 : 排程來源 執行維度 : 由 scan 指定


execute \
    as @e[tag=monster.freeze.display,type=block_display] at @s run \
function monsters:generic/freeze/orphan/detect
