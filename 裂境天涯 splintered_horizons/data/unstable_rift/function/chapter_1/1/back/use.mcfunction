# ===================================================
# 傳送回進入前的座標 / teleport back to the recorded position

    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down
    ## Guide [ function unstable_rift:chapter_1/1/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:chapter_1/1/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:chapter_1/1/back/use.guide ] >>> 傳送巨集 / teleport macro

# ===================================================

# 沒有紀錄就直接收手。
#
# 這道守衛不能省：`scoreboard players get` 讀不到分數時會失敗，
# 但 `store result` 照樣會把 0 寫進 storage，巨集就會拿到 0 0 0，
# 把玩家丟到世界原點。用 y 當代表是因為三個一定同時被寫入。

execute \
    unless score @s unstable_rift.chapter_1.1.back.y matches -2147483648..2147483647 run \
return 0

execute \
    store result storage unstable_rift:chapter_1.1 back.x float 0.01 run \
scoreboard players get @s unstable_rift.chapter_1.1.back.x

execute \
    store result storage unstable_rift:chapter_1.1 back.y float 0.01 run \
scoreboard players get @s unstable_rift.chapter_1.1.back.y

execute \
    store result storage unstable_rift:chapter_1.1 back.z float 0.01 run \
scoreboard players get @s unstable_rift.chapter_1.1.back.z

function unstable_rift:chapter_1/1/back/use.guide with storage unstable_rift:chapter_1.1 back

data remove storage unstable_rift:chapter_1.1 back

# 用完就丟，別把這次的座標留到下一次進來
scoreboard players reset @s unstable_rift.chapter_1.1.back.x
scoreboard players reset @s unstable_rift.chapter_1.1.back.y
scoreboard players reset @s unstable_rift.chapter_1.1.back.z
