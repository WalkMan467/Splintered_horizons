# ===================================================
# 裂境 生怪磚 存檔 / unstable rift spawner snapshot

    ## Guide [ function unstable_rift:spawner/respawn/snapshot ] >>> 裂境 生怪磚 存檔 / unstable rift spawner snapshot
    ## Guide [ function unstable_rift:spawner/respawn/intact ] >>> 裂境 生怪磚 還在 / the spawner is still there
    ## Guide [ function unstable_rift:spawner/respawn/rebuild.guide ] >>> 裂境 生怪磚 還原方塊 / restore the spawner block

# ===================================================

# 執行者是重建點 marker，位置就是生怪磚那一格
# 把整顆方塊實體 NBT 原封不動存進 marker 的 data.spawner，這份就是「破壞前的生怪磚資料」


data modify entity @s data.spawner set from block ~ ~ ~

# id 不用存，重建時 setblock 已經指定 minecraft:spawner 了

execute \
    if data entity @s data.spawner.id run \
data remove entity @s data.spawner.id

# 重建出來的生怪磚一律 Delay:0s

data modify entity @s data.spawner.Delay set value 0s

# 下一次允許存檔的時間 = 現在 + 1 秒

scoreboard players operation @s unstable_rift.spawner.snapshot = #gametime global.main
scoreboard players add @s unstable_rift.spawner.snapshot 20
