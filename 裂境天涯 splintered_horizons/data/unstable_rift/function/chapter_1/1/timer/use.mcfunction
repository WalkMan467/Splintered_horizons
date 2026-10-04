# ===================================================
# 倒數計時 / countdown tick

    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:chapter_1/1/clear ] >>> 收尾清理 / tear down

# ===================================================

execute \
    unless entity @s[tag=unstable_rift.chapter_1.1] run \
return 0

scoreboard players remove @s unstable_rift.timer 1

execute \
    store result storage unstable_rift:chapter_1.1 temp.id int 1 run \
scoreboard players get @s unstable_rift.chapter_1.1.display.id

function unstable_rift:chapter_1/1/bossbar/update with storage unstable_rift:chapter_1.1 temp

execute \
    if score @s unstable_rift.timer matches ..0 run \
function unstable_rift:chapter_1/1/clear
