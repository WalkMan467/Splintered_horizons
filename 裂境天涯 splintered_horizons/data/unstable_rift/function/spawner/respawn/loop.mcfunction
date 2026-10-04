# ===================================================
# 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop

    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop
    ## Guide [ function unstable_rift:spawner/main ] >>> 裂境 生怪磚 主程式 / unstable rift spawner main
    ## Guide [ function unstable_rift:spawner/respawn/intact ] >>> 裂境 生怪磚 還在 / the spawner is still there
    ## Guide [ function unstable_rift:spawner/respawn/broken ] >>> 裂境 生怪磚 被破壞 / the spawner was destroyed
    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner

# ===================================================

# 執行者是重建點 marker，位置就是生怪磚那一格
# 生怪磚還在就一直更新存檔，不在就開始倒數，時間到才把方塊放回去


# 生怪磚還在：更新存檔、取消倒數

execute \
    if block ~ ~ ~ minecraft:spawner \
    run return run \
function unstable_rift:spawner/respawn/intact

# 第一次發現生怪磚不見了：記下重建時間

execute \
    unless entity @s[tag=unstable_rift.spawner.broken] \
    run return run \
function unstable_rift:spawner/respawn/broken

# 倒數中：時間到就重建

execute \
    if score @s unstable_rift.spawner.at <= #gametime global.main run \
function unstable_rift:spawner/respawn/rebuild
