# ===================================================
# 水之魔劍 水鏡之光 倒影 檢查 / sword aquilumera reflection check

    ## Guide [ function weapons:type/sword/aquilumera/reflection/check ] >>> 水之魔劍 水鏡之光 倒影 檢查 / sword aquilumera reflection check
    ## Guide [ function weapons:type/sword/aquilumera/reflection/tick ] >>> 水之魔劍 水鏡之光 倒影 每 tick / sword aquilumera reflection tick
    ## Guide [ function weapons:type/sword/aquilumera/reflection/clear ] >>> 水之魔劍 水鏡之光 倒影 清除 / sword aquilumera reflection clear
    ## Guide [ function weapons:type/sword/aquilumera/reflection/transfer ] >>> 水之魔劍 水鏡之光 倒影 轉移 / sword aquilumera reflection transfer

# ===================================================

# 執行者 : 身上有倒影的敵人 ; 座標 : 該敵人

# 到期 : 整隻清掉

execute \
    unless score @s weapon.aquilumera.reflection.expire matches -2147483648..2147483647 run \
    return run \
function weapons:type/sword/aquilumera/reflection/clear

execute \
    if score #gametime global.main >= @s weapon.aquilumera.reflection.expire run \
    return run \
function weapons:type/sword/aquilumera/reflection/clear

# 被擊殺 : 生物死掉後會在世界上多留 20 tick 播死亡動畫，這段期間 DeathTime 不是 0
# 不論死因都會走到這裡；轉移完會把自己的倒影清掉，所以同一隻只會轉一次

execute \
    unless data entity @s {DeathTime:0s} run \
    return run \
function weapons:type/sword/aquilumera/reflection/transfer

# 粒子

execute \
    if score #pulse weapon.aquilumera.reflection.form matches 0 run \
function weapons:type/sword/aquilumera/reflection/particle
