# ===================================================
# 水之魔劍 水鏡之光 被動 消耗倒影 / sword aquilumera passive consume reflection

    ## Guide [ function weapons:type/sword/aquilumera/passive/consume ] >>> 水之魔劍 水鏡之光 被動 消耗倒影 / sword aquilumera passive consume reflection
    ## Guide [ function weapons:type/sword/aquilumera/passive/hit ] >>> 水之魔劍 水鏡之光 被動 近戰命中 / sword aquilumera passive melee hit
    ## Guide [ function weapons:type/sword/aquilumera/reflection/clear ] >>> 水之魔劍 水鏡之光 倒影 清除 / sword aquilumera reflection clear
    ## Guide [ function weapons:type/sword/aquilumera/passive/water ] >>> 水之魔劍 水鏡之光 被動 水型態 / sword aquilumera passive water form

# ===================================================

# 執行者 : 被近戰命中、身上有倒影的怪物
#
# 型態看的是這層倒影疊上去時記下的型態（就是頭上粒子的顏色），
# 不是玩家手上拿什麼 : 手上不是水鏡之光時根本沒有型態可看。

scoreboard players operation @s weapon.aquilumera.reflection.hit = #gametime global.main

# 先把型態讀出來，下面扣到 0 會整組清掉

scoreboard players set #consume weapon.aquilumera.reflection.form 0

execute \
    if score @s weapon.aquilumera.reflection.form matches 1..2 run \
scoreboard players operation #consume weapon.aquilumera.reflection.form = @s weapon.aquilumera.reflection.form

# 移除 1 層倒影

scoreboard players remove @s weapon.aquilumera.reflection 1

execute \
    unless score @s weapon.aquilumera.reflection matches 1.. run \
function weapons:type/sword/aquilumera/reflection/clear

# 水型態 : 手持武器冷卻減少 2 秒

execute \
    if score #consume weapon.aquilumera.reflection.form matches 1 \
    on attacker run \
function weapons:type/sword/aquilumera/passive/water

# 光型態 : 攻擊速度 +5% (00:05)
# 同一個 id 重複觸發會由 CSE 合併 : 每次 +5%、刷新 5 秒、最多 +25%

execute \
    if score #consume weapon.aquilumera.reflection.form matches 2 \
    on attacker run \
function cse:sys/status_effects/use {attribute:"attack_speed", duration:100, base:0.05, value:0.05, max:0.25, id:"weapon.aquilumera", type:"add_multiplied_base"}
