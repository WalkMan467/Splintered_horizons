# ===================================================
# 裂境 生怪磚 重建 / rebuild the spawner

    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner
    ## Guide [ function unstable_rift:spawner/respawn/rebuild.guide ] >>> 裂境 生怪磚 還原方塊 / restore the spawner block
    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop
    ## Guide [ function unstable_rift:chest/refresh ] >>> 裂境 寶箱 刷新 / refresh the rift chest

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

# 同一組的寶箱跟著一起刷新
#
# 這裡是以生怪磚為中心抓 8 格內的寶箱紀錄點，跟 chest/ray/hit 註冊時
# 「8 格內有生怪磚」是同一個半徑，所以註冊得起來的寶箱一定刷得到

execute \
    as @e[tag=unstable_rift.chest.point,distance=..8,sort=arbitrary,type=marker] at @s run \
function unstable_rift:chest/refresh
