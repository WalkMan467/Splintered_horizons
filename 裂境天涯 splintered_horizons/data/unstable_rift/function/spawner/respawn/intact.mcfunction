# ===================================================
# 裂境 生怪磚 還在 / the spawner is still there

    ## Guide [ function unstable_rift:spawner/respawn/intact ] >>> 裂境 生怪磚 還在 / the spawner is still there
    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop
    ## Guide [ function unstable_rift:spawner/respawn/snapshot ] >>> 裂境 生怪磚 存檔 / unstable rift spawner snapshot

# ===================================================

# 執行者是重建點 marker
# 方塊還在就不該留著破壞標記，重建時間也等下次破壞再算


tag @s remove unstable_rift.spawner.broken

# 存檔節流：unstable_rift.spawner.snapshot 存的是「下一次允許存檔的時間」
# 這樣每秒最多讀一次方塊 NBT，生怪磚被改過參數也會在 1 秒內跟上

execute \
    unless score @s unstable_rift.spawner.snapshot matches -2147483648..2147483647 \
    run return run \
function unstable_rift:spawner/respawn/snapshot

execute \
    if score @s unstable_rift.spawner.snapshot <= #gametime global.main run \
function unstable_rift:spawner/respawn/snapshot
