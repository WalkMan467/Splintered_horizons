# ===================================================
# 暴食者 主迴圈 / gluttony loop

    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/main ] >>> 暴食者 主迴圈 / gluttony loop
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/use ] >>> 暴食者 受傷觸發 / gluttony on damaged
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/lock ] >>> 壓回一半 / clamp to half
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/venom_floor ] >>> 暴食者 緋紅劇毒地板 / gluttony crimson venom floor

# ===================================================

# 執行者 : 穿戴者（由附魔的 minecraft:tick 每 tick 呼叫）
#
# 這支做兩件事：先把 use 排下來的鎖血倒數走完，再算「狀態開不開」，
# 寫進 player.eis.gluttony.active，
# 附魔那邊的 post_attack 用 entity_scores 讀它決定要不要扣飢餓與鎖血
#
# 條件：血量 <= 上限的一半，而且飢餓 >= 7
#
# 比較用 <= 不用 < 是故意的 —— 鎖血會把人停在剛好一半，
# 用 < 的話下一刀守衛就不成立，會變成一刀有一刀沒有

# 鎖血倒數：use 設 2，這裡每 tick 減一，等 instant_health 結算完才壓血
#
# 倒數擺在最前面，壓完血同一 tick 下面就能用新的血量重算守衛

execute \
    if score @s player.eis.gluttony.lock matches 1.. run \
scoreboard players remove @s player.eis.gluttony.lock 1

execute \
    if score @s player.eis.gluttony.lock matches 0 run \
function energy_infusion_stone:skills/armor/gluttony/lock

# 血量存成百倍整數跟上限比

execute \
    store result score #eis.gluttony.hp global.main run \
data get entity @s Health 100

execute \
    store result score #eis.gluttony.max global.main run \
attribute @s minecraft:max_health get 100

execute \
    store result score #eis.gluttony.food global.main run \
data get entity @s foodLevel

scoreboard players set #eis.gluttony.two global.main 2
scoreboard players operation #eis.gluttony.max global.main /= #eis.gluttony.two global.main

scoreboard players set @s player.eis.gluttony.active 0

execute \
    if score #eis.gluttony.hp global.main <= #eis.gluttony.max global.main \
    if score #eis.gluttony.food global.main matches 7.. run \
scoreboard players set @s player.eis.gluttony.active 1

execute \
    if score @s player.eis.gluttony.active matches 1 run \
    return run \
attribute @s armor modifier add eis.gluttony.lock.1 1024 add_value

attribute @s armor modifier remove eis.gluttony.lock.1