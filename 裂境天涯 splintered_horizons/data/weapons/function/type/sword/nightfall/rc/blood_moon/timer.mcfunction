# ===================================================
# 劍 夜幕 血月 計時 / sword nightfall blood moon timer

    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/timer ] >>> 劍 夜幕 血月 計時 / sword nightfall blood moon timer
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player
    ## Guide [ function weapons:type/sword/nightfall/rc/state/0 ] >>> 劍 夜幕 右鍵 狀態 階段 0 / sword nightfall right click state step 0
    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/scan ] >>> 劍 夜幕 血月 掃背包 / sword nightfall blood moon scan inventory

# ===================================================

# 執行者 : 玩家
#
# 血月只持續 5 秒，時間到自動換回半月，收進背包一樣會換。
# 拿在手上的走 rc/state/0（有 title 跟音效），
# 不在手上的交給 scan 靜靜換掉，不然畫面會莫名其妙閃 title。

scoreboard players remove @s weapon.nightfall.blood_moon 1

execute \
    if score @s weapon.nightfall.blood_moon matches 1.. run \
return 0

# 時間到

scoreboard players set @s weapon.nightfall.blood_moon 0
scoreboard players set @s weapon.nightfall.state 0

execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"nightfall",state:1b}] run \
    return run \
function weapons:type/sword/nightfall/rc/state/0

# 副手

execute \
    if items entity @s weapon.offhand *[custom_data~{weapon:"nightfall",state:1b}] run \
item modify entity @s weapon.offhand weapons:type/sword/nightfall/0

# 背包 : 沒有的話直接收工，有的話才逐格掃

execute \
    unless items entity @s container.* *[custom_data~{weapon:"nightfall",state:1b}] run \
    return run \
return 0

scoreboard players set #slot weapon.nightfall.blood_moon 0

function weapons:type/sword/nightfall/rc/blood_moon/scan
