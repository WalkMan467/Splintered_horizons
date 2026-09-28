# ===================================================
# 紀錄進入前的座標 / record the position before entering

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:chapter_1/1/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:chapter_1/1/back/use.guide ] >>> 傳送巨集 / teleport macro
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down

# ===================================================

# 進來的那一刻存一次就好，之後整段待在裡面都不再更新。
#
# 座標乘 100 存成整數，小數點後兩位足夠回到原地；
# back/use 再用 `store result ... float 0.01` 換回去。
# 記分板只能放整數，不乘就會掉小數、玩家會被塞進方塊裡。

execute \
    store result score @s unstable_rift.chapter_1.1.back.x run \
data get entity @s Pos[0] 100

execute \
    store result score @s unstable_rift.chapter_1.1.back.y run \
data get entity @s Pos[1] 100

execute \
    store result score @s unstable_rift.chapter_1.1.back.z run \
data get entity @s Pos[2] 100
