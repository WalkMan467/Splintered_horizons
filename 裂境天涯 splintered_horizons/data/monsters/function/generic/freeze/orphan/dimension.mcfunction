# 執行者 : 排程來源 執行維度 : 由 scan 指定

    ## Guide [ function monsters:generic/freeze/orphan/dimension ] >>> dimension

    ## Guide [ function monsters:generic/freeze/orphan/scan ] >>> orphan scan

    ## Guide [ function monsters:generic/freeze/orphan/detect ] >>> detect


execute \
    as @e[tag=monster.freeze.display,type=block_display] at @s run \
function monsters:generic/freeze/orphan/detect
