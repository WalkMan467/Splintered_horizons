# ===================================================
# 水之魔劍 水鏡之光 倒影 每 tick / sword aquilumera reflection tick

    ## Guide [ function weapons:type/sword/aquilumera/reflection/tick ] >>> 水之魔劍 水鏡之光 倒影 每 tick / sword aquilumera reflection tick
    ## Guide [ function #main:timer ] >>> 計時器 / timer
    ## Guide [ function weapons:type/sword/aquilumera/reflection/check ] >>> 水之魔劍 水鏡之光 倒影 檢查 / sword aquilumera reflection check

# ===================================================

# 執行者 : 伺服器 ( #main:timer，整個世界每 tick 只跑一次，不會被玩家數量乘算 )
#
# 全場最晚的倒影都到期了就整支跳過，平常沒人用水鏡之光時不會掃實體。
# 還有倒影的期間才逐隻檢查 : 到期清掉、死掉轉移。

execute \
    unless score #max weapon.aquilumera.reflection.expire matches -2147483648..2147483647 run \
return 0

execute \
    if score #gametime global.main > #max weapon.aquilumera.reflection.expire run \
return 0

# 粒子每 4 tick 噴一次，看得出來就好，每 tick 噴對客戶端太重

scoreboard players set #4 weapon.aquilumera.reflection.form 4
scoreboard players operation #pulse weapon.aquilumera.reflection.form = #gametime global.main
scoreboard players operation #pulse weapon.aquilumera.reflection.form %= #4 weapon.aquilumera.reflection.form

execute \
    as @e[scores={weapon.aquilumera.reflection=1..},type=!player] at @s run \
function weapons:type/sword/aquilumera/reflection/check
