# ===================================================
# 裂境 周圍掃描 命中 / scan hit

    ## Guide [ function unstable_rift:util/scan/hit ] >>> 裂境 周圍掃描 命中 / scan hit
    ## Guide [ function unstable_rift:util/scan/test ] >>> 裂境 周圍掃描 單格判定 / scan one cell
    ## Guide [ function unstable_rift:spawner/respawn/register ] >>> 裂境 生怪磚 註冊重建點 / register the rebuild point
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest

# ===================================================

# 執行位置是那一格的正中心，條件在 scan/test 已經判完了
#
# 旗標一設起來，上面三層迴圈就不再往下推。一次放置只會有一個新方塊，
# 找到就沒必要把剩下的 1300 格掃完


execute \
    if score #unstable_rift.scan.mode global.main matches 1 run \
function unstable_rift:spawner/respawn/register

execute \
    if score #unstable_rift.scan.mode global.main matches 2 run \
function unstable_rift:chest/register

scoreboard players set #unstable_rift.scan.hit global.main 1
