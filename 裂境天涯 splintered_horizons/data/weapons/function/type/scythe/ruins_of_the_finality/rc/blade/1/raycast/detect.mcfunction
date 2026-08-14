# ===================================================
# 鐮 終焉之墟 右鍵 blade 階段 1 射線 偵測 / scythe ruins of the finality right click blade step 1 raycast detect

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/detect ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 偵測 / scythe ruins of the finality right click blade step 1 raycast detect
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 final / scythe ruins of the finality right click blade step 1 raycast final
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/raycast ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 / scythe ruins of the finality right click blade step 1 raycast

# ===================================================

scoreboard players remove #temp weapon.ruins_of_the_finality.effect.range 1

# 擊中敵人

execute rotated ~ 0 \
    if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. \
    positioned ^ ^ ^0.5 \
    if entity @n[distance=..2,type=!player,type=!#dummy_mob] run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final

# 擊中方塊

execute rotated ~ 0 \
    if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. \
    positioned ^ ^ ^0.5 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/detect

execute rotated ~ 0 \
    if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. \
    positioned ^ ^ ^0.5 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final

# 到達最大距離

execute rotated ~ 0 \
    if score #temp weapon.ruins_of_the_finality.effect.range matches 1 \
    positioned ^ ^ ^0.5 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final