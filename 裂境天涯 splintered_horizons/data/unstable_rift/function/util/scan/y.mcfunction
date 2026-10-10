# ===================================================
# 裂境 周圍掃描 Y 迴圈 / scan y loop

    ## Guide [ function unstable_rift:util/scan/y ] >>> 裂境 周圍掃描 Y 迴圈 / scan y loop
    ## Guide [ function unstable_rift:util/scan/x ] >>> 裂境 周圍掃描 X 迴圈 / scan x loop
    ## Guide [ function unstable_rift:util/scan/z ] >>> 裂境 周圍掃描 Z 迴圈 / scan z loop

# ===================================================


scoreboard players set #unstable_rift.scan.z global.main 11

function unstable_rift:util/scan/z

scoreboard players remove #unstable_rift.scan.y global.main 1

execute \
    if score #unstable_rift.scan.hit global.main matches 0 \
    if score #unstable_rift.scan.y global.main matches 1.. \
    positioned ~ ~1 ~ run \
function unstable_rift:util/scan/y
