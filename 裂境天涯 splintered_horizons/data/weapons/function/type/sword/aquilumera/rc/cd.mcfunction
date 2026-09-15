# ===================================================
# 水之魔劍 水鏡之光 右鍵 冷卻 / sword aquilumera right click cooldown

    ## Guide [ function weapons:type/sword/aquilumera/rc/cd ] >>> 水之魔劍 水鏡之光 右鍵 冷卻 / sword aquilumera right click cooldown
    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate

# ===================================================

# 執行者 : 玩家
#
# 擁有輝煌之光符文時 CD 改至 15 秒，否則 25 秒。
# 判斷的是「放技能當下」有沒有符文，之後符文消失也不會把 CD 拉回 25 秒。

execute \
    if score @s weapon.effect.resplendence matches 1.. run \
    return run \
function weapons:rc/cd {id:"weapon.aquilumera.cd", cd:300}

function weapons:rc/cd {id:"weapon.aquilumera.cd", cd:500}
