# ===================================================
# 傳送回進入前的座標 / teleport back to the recorded position

    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:main/back/get_pos ] >>> 取出紀錄的座標 / read the recorded position
    ## Guide [ function unstable_rift:main/back/use.guide ] >>> 傳送巨集 / teleport macro
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 執行者 : 玩家

# 沒有紀錄就直接收手
#
# `scoreboard players get` 讀不到分數時會失敗，但 `store result` 照樣會把 0
# 寫進 storage，巨集就會拿到 0 0 0 把玩家丟到世界原點
# 用 y 當代表是因為三個一定同時被寫入

execute \
    unless score @s unstable_rift.player.pos.y matches -2147483648..2147483647 run \
return 0

function unstable_rift:main/back/get_pos

function unstable_rift:main/back/use.guide with storage unstable_rift:main back

data remove storage unstable_rift:main back

# 用完就丟，別把這次的座標留到下一次進來

scoreboard players reset @s unstable_rift.player.pos.x
scoreboard players reset @s unstable_rift.player.pos.y
scoreboard players reset @s unstable_rift.player.pos.z
scoreboard players reset @s unstable_rift.player.pos.dim
