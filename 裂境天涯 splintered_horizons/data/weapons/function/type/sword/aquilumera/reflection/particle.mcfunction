# ===================================================
# 水之魔劍 水鏡之光 倒影 粒子 / sword aquilumera reflection particle

    ## Guide [ function weapons:type/sword/aquilumera/reflection/particle ] >>> 水之魔劍 水鏡之光 倒影 粒子 / sword aquilumera reflection particle
    ## Guide [ function weapons:type/sword/aquilumera/reflection/check ] >>> 水之魔劍 水鏡之光 倒影 檢查 / sword aquilumera reflection check

# ===================================================

# 執行者 : 身上有倒影、還活著的敵人 ; 座標 : 該敵人
#
# 顏色跟切換型態時的閃光同色 : 水 [0.0, 0.667, 1.0]、光 [1.0, 0.835, 0.0]
# anchored eyes + positioned ^ ^ ^ 取眼睛高度，再往上 0.5 格，
# 不管怪多高都會飄在頭頂，也不會因為怪低頭而歪掉

execute \
    if score @s weapon.aquilumera.reflection.form matches 1 \
    anchored eyes positioned ^ ^ ^ \
    positioned ~ ~0.5 ~ run \
particle dust{color:[0.0f,0.667f,1.0f],scale:1.0f} ~ ~ ~ 0.25 0.15 0.25 0 3 normal @a

execute \
    if score @s weapon.aquilumera.reflection.form matches 2 \
    anchored eyes positioned ^ ^ ^ \
    positioned ~ ~0.5 ~ run \
particle dust{color:[1.0f,0.835f,0.0f],scale:1.0f} ~ ~ ~ 0.25 0.15 0.25 0 3 normal @a
