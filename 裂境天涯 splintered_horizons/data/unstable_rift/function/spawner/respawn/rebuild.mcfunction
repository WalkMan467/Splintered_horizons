# ===================================================
# 裂境 生怪磚 重建 / rebuild the spawner

    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner
    ## Guide [ function unstable_rift:spawner/respawn/rebuild.guide ] >>> 裂境 生怪磚 還原方塊 / restore the spawner block
    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop

# ===================================================

# 執行者是重建點 marker，位置就是生怪磚那一格
# 沒存檔就不重建，免得放出一顆空的生怪磚


execute \
    unless data entity @s data.spawner run \
return 0

data modify storage unstable_rift:spawner rebuild.spawner set from entity @s data.spawner

function unstable_rift:spawner/respawn/rebuild.guide with storage unstable_rift:spawner rebuild

data remove storage unstable_rift:spawner rebuild

# 回到待命狀態，下次被破壞再重新倒數

tag @s remove unstable_rift.spawner.broken
scoreboard players reset @s unstable_rift.spawner.at
