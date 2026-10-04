# ===================================================
# 倒數計時 / countdown tick

    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:main/start ] >>> 正式開局 / start the run
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 參數 : area（其餘轉給 clear）

$execute \
    unless entity @s[tag=unstable_rift.$(area)] run \
return 0

# 倒數沒起算就不要扣
#
# 有選武器房的區域，標籤在 main/in 就上了，但 unstable_rift.timer 要等
# main/start 才設 —— 少了這道守衛，人在選武器房的時候分數會從沒有值被扣成
# -1，下一行的 matches ..0 立刻成立，還沒選完武器就被 clear 丟出去
#
# 歸零之後 clear 會 reset 掉分數，所以這道守衛也順便擋掉重複 clear

execute \
    unless score @s unstable_rift.timer matches 1.. run \
return 0

scoreboard players remove @s unstable_rift.timer 1

# 侵蝕度把時間也重塑了：錯位 1.5 倍速、崩解與吞噬 2 倍速
#
# 1.5 倍沒辦法用整數 tick 直接扣，所以改成每隔一 tick 多扣 1 ——
# erosion.half 由 main/erosion/tick 每 tick 在 0 跟 1 之間翻面
#
# 沒開 erosion_sys 的區域這兩個分數不存在，條件不成立，等於沒這段

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 3.. run \
scoreboard players remove @s unstable_rift.timer 1

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 2 \
    if score #unstable_rift.$(area).erosion.half global.main matches 1 run \
scoreboard players remove @s unstable_rift.timer 1

$execute \
    store result storage unstable_rift:main args.id int 1 run \
scoreboard players get @s unstable_rift.$(area).display.id

function unstable_rift:main/bossbar/update with storage unstable_rift:main args

execute \
    if score @s unstable_rift.timer matches ..0 run \
function unstable_rift:main/clear with storage unstable_rift:main args
