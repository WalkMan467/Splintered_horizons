# ===================================================
# 裂境 周圍掃描 入口 / neighbourhood scan entry

    ## Guide [ function unstable_rift:util/scan/use ] >>> 裂境 周圍掃描 入口 / neighbourhood scan entry
    ## Guide [ function unstable_rift:util/scan/test ] >>> 裂境 周圍掃描 單格判定 / scan one cell
    ## Guide [ function unstable_rift:util/scan/hit ] >>> 裂境 周圍掃描 命中 / scan hit
    ## Guide [ function unstable_rift:spawner/respawn/detect ] >>> 裂境 生怪磚 手放偵測 / spawner hand-place detection
    ## Guide [ function unstable_rift:chest/detect ] >>> 裂境 寶箱 手放偵測 / chest hand-place detection

# ===================================================

# 以執行位置為中心掃 11x11x11（±5 格），每一格跑 unstable_rift:util/scan/test
#
# 呼叫前要先設好 #unstable_rift.scan.mode global.main：
#   1 = 生怪磚註冊、2 = 寶箱註冊
#
# 範圍要 ±5 是因為創造模式的互動距離是 4.5~5 格 —— 建圖時方塊是伸手擺出去的，
# 不是貼在腳邊。原本 ±2 只蓋得到貼身放置，站遠一點擺就完全掃不到
#
# 這是視線 raycast 的保險，而且實務上是主力。射線會漏掉兩種情況：
#   1. 邊轉視角邊放方塊 —— 放置是 ServerboundUseItemOnPacket 帶 BlockHitResult
#      過來的，伺服器不重新 raycast，但獎勵函式讀的是玩家當下的視角，兩者會差幾度
#   2. 擦邊放置，或箱子這種比一格還小的模型，射線在格子裡走的距離可能不到一個步長
#
# 11^3 = 1331 格，連迴圈本體大約 7000 條指令，但只在放下生怪磚或箱子的那一 tick
# 跑一次，而且找到就提前收工（見 scan/hit 設的 scan.hit 旗標）
#
# 兩種 mode 都有「已經有紀錄點就跳過」的保護，所以重複跑不會弄壞既有的註冊


scoreboard players set #unstable_rift.scan.hit global.main 0
scoreboard players set #unstable_rift.scan.x global.main 11

# align xyz 先對齊到玩家所在的方塊角落，再退到 11x11x11 的角落那一格

execute align xyz positioned ~-5 ~-5 ~-5 run \
function unstable_rift:util/scan/x
