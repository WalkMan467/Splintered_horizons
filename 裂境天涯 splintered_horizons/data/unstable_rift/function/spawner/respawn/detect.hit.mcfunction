# ===================================================
# 裂境 生怪磚 視線找到了 / the spawner was found

    ## Guide [ function unstable_rift:spawner/respawn/detect.hit ] >>> 裂境 生怪磚 視線找到了 / the spawner was found
    ## Guide [ function unstable_rift:spawner/respawn/detect.ray ] >>> 裂境 生怪磚 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:spawner/respawn/register ] >>> 裂境 生怪磚 註冊重建點（預設 300s）/ register the rebuild point (default 300s)
    ## Guide [ function unstable_rift:spawner/respawn/register.guide ] >>> 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay

# ===================================================

# 執行位置在生怪磚那一格裡面，但不一定是正中心 ——
# register.guide 自己會 align xyz，這裡不用先對齊


# 已經有重建點就不重複註冊：原本的秒數與存檔都留著，重跑不會被打回預設值

execute \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    if entity @e[tag=unstable_rift.spawner.point,distance=..0.5,sort=arbitrary,type=marker] run \
return 0

# 生怪磚自己帶秒數就照它的，沒帶就走預設 300s
#
# 要讓某一顆手放的用別的秒數，就在 spawner/get 的 data 裡多塞一個 respawn:<秒>，
# 跟 mob 放在一起（data:{mob:"...",respawn:120}）

execute \
    unless data block ~ ~ ~ SpawnData.entity.data.respawn \
    run return run \
function unstable_rift:spawner/respawn/register

data modify storage unstable_rift:spawner detect.seconds set from block ~ ~ ~ SpawnData.entity.data.respawn

function unstable_rift:spawner/respawn/register.guide with storage unstable_rift:spawner detect

data remove storage unstable_rift:spawner detect
