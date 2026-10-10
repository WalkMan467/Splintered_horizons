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

# gametime 溢出留下的殘骸：目標時間貼在 int 上限，而現在的時間還很小
#
# main:gametime 數到 2147483647 會把 #gametime 歸零，那一刻還在倒數的 marker 會留著
# 一個永遠等不到的大數字，at <= gametime 從此恆為假，方塊再也不會回來 ——
# 症狀是「marker 在但甚麼都不動」，跟難度閘那個坑長得一模一樣，很難往時間溢出想
#
# 不在 #gametime 歸零的那一刻統一清掉，是因為那時候卸載區塊裡的 marker 根本選不到，
# 清了也只清到附近那幾顆。改成讀到才判，區塊幾天後載回來一樣修得掉
#
# 兩個門檻都是跟常數比大小，正常情況恆為假，所以每 tick 多這一條不花效能。
# #gametime 真的走到 2000000000 以上時（歸零前最後 85 天）第二條會擋住，不會誤判

execute \
    if score @s unstable_rift.spawner.at matches 2000000000.. \
    if score #gametime global.main matches ..2000000000 run \
scoreboard players set @s unstable_rift.spawner.at 0

# 倒數中：時間到就重建

execute \
    if score @s unstable_rift.spawner.at <= #gametime global.main run \
function unstable_rift:spawner/respawn/rebuild
