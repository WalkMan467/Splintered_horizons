# ===================================================
# 裂境 生怪磚 被破壞 / the spawner was destroyed

    ## Guide [ function unstable_rift:spawner/respawn/broken ] >>> 裂境 生怪磚 被破壞 / the spawner was destroyed
    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop
    ## Guide [ function unstable_rift:spawner/respawn/rebuild ] >>> 裂境 生怪磚 重建 / rebuild the spawner

# ===================================================

# 執行者是重建點 marker
# 不管是被玩家挖掉、被爆炸炸掉還是被指令換成別的方塊，只要那一格不是生怪磚就算破壞


tag @s add unstable_rift.spawner.broken

# 沒寫秒數的舊 marker 也補一個預設值，不然倒數會算不出來

execute \
    unless data entity @s data.respawn run \
data modify entity @s data.respawn set value 300

# 重建時間 = 現在 + 指定秒數（data get 的 scale 20 直接把秒換成 tick）
# 用絕對時間存，就算中途沒人在附近、區塊被卸載，回來的時候一樣會判定成已經到時間

execute \
    store result score @s unstable_rift.spawner.at run \
data get entity @s data.respawn 20

scoreboard players operation @s unstable_rift.spawner.at += #gametime global.main
