# ===================================================
# 裂境 生怪磚 手放偵測 / unstable rift spawner hand-place detection

    ## Guide [ function unstable_rift:spawner/respawn/detect ] >>> 裂境 生怪磚 手放偵測 / unstable rift spawner hand-place detection
    ## Guide [ function unstable_rift:spawner/respawn/detect.ray ] >>> 裂境 生怪磚 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:spawner/respawn/detect.hit ] >>> 裂境 生怪磚 視線找到了 / the spawner was found
    ## Guide [ function unstable_rift:spawner/get ] >>> 裂境 生怪磚 取得物品 / unstable rift spawner get item

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:spawner/placed 觸發，
# 也就是放下生怪磚的那一 tick
#
# advancement 只濾「放下的是 minecraft:spawner」，「是不是裂境生怪磚」留到
# detect.ray 用 SpawnData.entity.data.mob 判 —— 條件寫在函式裡比寫在 JSON 裡好改
#
# 資料讀不讀得到是查過 26.3 jar 的：BlockItem.place 裡 updateCustomBlockEntityTag
# 排在 PLACED_BLOCK.trigger 前面，所以觸發的當下方塊實體資料一定已經寫好了
#
# 獎勵函式是 as 玩家 at 玩家 跑的，拿不到方塊座標，只能從視線找回來 ——
# 放方塊的時候準心一定穿過那一格，所以這招會中


advancement revoke @s only unstable_rift:spawner/placed

# 8 格 / 每步 0.1 格 = 80 步，夠蓋過任何伸手距離
# 一次放置只跑一輪，80 步的開銷可以無視

scoreboard players set #unstable_rift.spawner.ray global.main 80

# anchored eyes 把起點拉到眼睛，再 anchored feet 把錨點收回來
#
# 不收的話 detect.ray 每遞迴一次都會再加一次眼高（錨點是對「當下執行座標」
# 做偏移，不是對實體本身），射線會一路往上飄

execute \
    anchored eyes positioned ^ ^ ^ anchored feet run \
function unstable_rift:spawner/respawn/detect.ray
