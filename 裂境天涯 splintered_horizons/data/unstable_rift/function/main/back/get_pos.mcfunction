# ===================================================
# 取出紀錄的座標 / read the recorded position

    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:main/back/get_pos ] >>> 取出紀錄的座標 / read the recorded position
    ## Guide [ function unstable_rift:main/back/use.guide ] >>> 傳送巨集 / teleport macro
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 執行者 : 玩家

# 把記分板上的整數還原成小數，填進 storage 給 use.guide 的巨集用
#
# 一定要用 float 不能用 int：int 會把 -18200 × 0.01 截成 -182，
# 小數全丟，那前面乘 100 就白做了

execute \
    store result storage unstable_rift:main back.x float 0.01 run \
scoreboard players get @s unstable_rift.player.pos.x

execute \
    store result storage unstable_rift:main back.y float 0.01 run \
scoreboard players get @s unstable_rift.player.pos.y

execute \
    store result storage unstable_rift:main back.z float 0.01 run \
scoreboard players get @s unstable_rift.player.pos.z

# 維度代碼換回名字先寫預設再逐個覆蓋，這樣就算沒記到維度，
# storage 裡也一定有 dim，巨集不會因為缺鍵整支失敗

data modify storage unstable_rift:main back.dim set value "minecraft:overworld"

execute \
    if score @s unstable_rift.player.pos.dim matches 1 run \
data modify storage unstable_rift:main back.dim set value "minecraft:the_nether"

execute \
    if score @s unstable_rift.player.pos.dim matches 2 run \
data modify storage unstable_rift:main back.dim set value "minecraft:the_end"

execute \
    if score @s unstable_rift.player.pos.dim matches 3 run \
data modify storage unstable_rift:main back.dim set value "world_area:main/game_lobby"
