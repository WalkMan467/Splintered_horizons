# ===================================================
# 裂境 生怪磚 視線搜尋 / trace the line of sight

    ## Guide [ function unstable_rift:spawner/respawn/detect.ray ] >>> 裂境 生怪磚 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:spawner/respawn/detect ] >>> 裂境 生怪磚 手放偵測 / unstable rift spawner hand-place detection
    ## Guide [ function unstable_rift:spawner/respawn/detect.hit ] >>> 裂境 生怪磚 視線找到了 / the spawner was found

# ===================================================

# 沿著玩家視線每次往前 0.05 格，碰到第一顆裂境生怪磚就收工
#
# SpawnData.entity.data.mob 是這套生怪磚的身分證 ——
# 原版生怪磚沒有這條路徑，所以不會被誤抓


execute \
    if data block ~ ~ ~ SpawnData.entity.data.mob \
    run return run \
function unstable_rift:spawner/respawn/detect.hit

# 步數用完就放棄：放的是原版生怪磚，或是準心沒穿過那一格

execute \
    if score #unstable_rift.spawner.ray global.main matches ..0 run \
return 0

scoreboard players remove #unstable_rift.spawner.ray global.main 1

execute positioned ^ ^ ^0.05 run \
function unstable_rift:spawner/respawn/detect.ray
