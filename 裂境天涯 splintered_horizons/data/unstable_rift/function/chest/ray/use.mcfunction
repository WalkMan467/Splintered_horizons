# ===================================================
# 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry

    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:chest/ray/step ] >>> 裂境 寶箱 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:chest/detect ] >>> 裂境 寶箱 手放偵測 / rift chest hand-place detection
    ## Guide [ function unstable_rift:chest/open/detect ] >>> 裂境 寶箱 開箱偵測 / rift chest open detection

# ===================================================

# 執行者是玩家
#
# 呼叫前要先設好 #unstable_rift.chest.ray.mode global.main：
#   1 = 放置註冊、2 = 開箱結算
#
# 跟 unstable_rift:spawner/respawn/detect 同一套做法 ——
# advancement 的獎勵函式拿不到方塊座標，只能從視線找回來。
# 放方塊跟開箱子都一定看著那一格，所以這招會中
#
# anchored eyes 把起點拉到眼睛，再 anchored feet 把錨點收回來。
# 不收的話每遞迴一次都會再加一次眼高，射線會一路往上飄


scoreboard players set #unstable_rift.chest.ray global.main 80

execute \
    anchored eyes positioned ^ ^ ^ anchored feet run \
function unstable_rift:chest/ray/step
