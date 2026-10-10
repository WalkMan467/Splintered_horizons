# ===================================================
# 裂境 生怪磚 手放偵測 / unstable rift spawner hand-place detection

    ## Guide [ function unstable_rift:spawner/respawn/detect ] >>> 裂境 生怪磚 手放偵測 / unstable rift spawner hand-place detection
    ## Guide [ function unstable_rift:spawner/respawn/detect.ray ] >>> 裂境 生怪磚 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:spawner/respawn/detect.hit ] >>> 裂境 生怪磚 視線找到了 / the spawner was found
    ## Guide [ function unstable_rift:util/scan/use ] >>> 裂境 周圍掃描 入口 / neighbourhood scan entry

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:spawner/placed 觸發，
# 也就是放下生怪磚的那一 tick
#
# advancement 只濾「放下的是 minecraft:spawner」，「是不是裂境生怪磚」留到
# detect.ray 與 util/scan/test 用 SpawnData.entity.data.mob 判
#
# 資料讀不讀得到是查過 26.3 jar 的：BlockItem.place 裡 updateCustomBlockEntityTag
# 排在 PLACED_BLOCK.trigger 前面，所以觸發的當下方塊實體資料一定已經寫好了
#
# 獎勵函式是 as 玩家 at 玩家 跑的，拿不到方塊座標，所以兩條路都走：
#   1. 視線射線 —— 蓋得到創造模式那種遠距離放置
#   2. 周圍 5x5x5 掃描 —— 不吃視角，補掉射線漏接的情況
# 兩條都有「已經有重建點就跳過」的保護，所以同時跑不會互相干擾


advancement revoke @s only unstable_rift:spawner/placed

# 8 格 / 每步 0.05 格 = 160 步
#
# 原本是 0.1，擦邊放置時射線在新方塊裡走不到一個步長就穿出去了，會漏接

scoreboard players set #unstable_rift.spawner.ray global.main 160

# anchored eyes 把起點拉到眼睛，再 anchored feet 把錨點收回來
#
# 不收的話 detect.ray 每遞迴一次都會再加一次眼高（錨點是對「當下執行座標」
# 做偏移，不是對實體本身），射線會一路往上飄

execute \
    anchored eyes positioned ^ ^ ^ anchored feet run \
function unstable_rift:spawner/respawn/detect.ray

# 保險：不管射線中沒中，都掃一次周圍

scoreboard players set #unstable_rift.scan.mode global.main 1

function unstable_rift:util/scan/use
