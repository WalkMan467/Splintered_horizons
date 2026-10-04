# ===================================================
# 水之魔劍 水鏡之光 倒影 轉移 / sword aquilumera reflection transfer

    ## Guide [ function weapons:type/sword/aquilumera/reflection/transfer ] >>> 水之魔劍 水鏡之光 倒影 轉移 / sword aquilumera reflection transfer
    ## Guide [ function weapons:type/sword/aquilumera/reflection/check ] >>> 水之魔劍 水鏡之光 倒影 檢查 / sword aquilumera reflection check
    ## Guide [ function weapons:type/sword/aquilumera/reflection/clear ] >>> 水之魔劍 水鏡之光 倒影 清除 / sword aquilumera reflection clear
    ## Guide [ function weapons:type/sword/aquilumera/reflection/receive ] >>> 水之魔劍 水鏡之光 倒影 接收 / sword aquilumera reflection receive

# ===================================================

# 執行者 : 剛被擊殺、身上還有倒影的敵人 ; 座標 : 該敵人
#
# 全部層數交給 5 格內隨機一隻還活著的敵人，沿用原本剩下的時間
# 自己已經在播死亡動畫，DeathTime 不是 0，所以 nbt 條件會把自己排除掉
# 5 格內沒有別的敵人的話，倒影就跟著消失

scoreboard players operation #stacks weapon.aquilumera.reflection = @s weapon.aquilumera.reflection
scoreboard players operation #expire weapon.aquilumera.reflection.expire = @s weapon.aquilumera.reflection.expire
scoreboard players operation #transfer weapon.aquilumera.reflection.form = @s weapon.aquilumera.reflection.form

function weapons:type/sword/aquilumera/reflection/clear

execute \
    as @e[distance=..5,sort=random,limit=1,type=!player,type=!#minecraft:dummy_mob,nbt={DeathTime:0s}] run \
function weapons:type/sword/aquilumera/reflection/receive
