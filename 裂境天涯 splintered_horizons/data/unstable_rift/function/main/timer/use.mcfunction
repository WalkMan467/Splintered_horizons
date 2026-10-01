# ===================================================
# 倒數計時 / countdown tick

    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 參數 : area（其餘轉給 clear）

$execute \
    unless entity @s[tag=unstable_rift.$(area)] run \
return 0

scoreboard players remove @s unstable_rift.timer 1

$execute \
    store result storage unstable_rift:main args.id int 1 run \
scoreboard players get @s unstable_rift.$(area).display.id

function unstable_rift:main/bossbar/update with storage unstable_rift:main args

execute \
    if score @s unstable_rift.timer matches ..0 run \
function unstable_rift:main/clear with storage unstable_rift:main args
