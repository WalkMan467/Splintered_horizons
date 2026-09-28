# ===================================================
# 收尾清理 / tear down

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down
    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar
    ## Guide [ function unstable_rift:chapter_1/1/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position

# ===================================================

tag @s remove unstable_rift.chapter_1.1

function players:inventory/return {bag:"overworld"}

# 還完就把袋子丟掉。
#
# players:inventory/return 不會自己清 storage，袋子會一直留著。
# 萬一 clear 被跑第二次（out 跟 timer/use 都會呼叫），同一份物品就會再發一次。

function players:inventory/remove {bag:"overworld"}

execute \
    store result storage unstable_rift:chapter_1.1 temp.id int 1 run \
scoreboard players get @s unstable_rift.chapter_1.1.display.id

function unstable_rift:chapter_1/1/bossbar/remove with storage unstable_rift:chapter_1.1 temp

scoreboard players reset @s unstable_rift.timer

# 傳送回 in 那一刻記下來的座標
function unstable_rift:chapter_1/1/back/use

# 送回去的點就在生態域邊界內側，不擋一下的話 chapter_1/loop 下一 tick
# 就會再判定一次「進入」，整個流程會卡成無限迴圈。
# 這幾秒足夠玩家自己走出去。

scoreboard players set @s unstable_rift.chapter_1.1.cooldown 100
