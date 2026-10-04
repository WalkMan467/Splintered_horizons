# ===================================================
# 火之魔劍 地獄之火 右鍵 冷卻 / sword pyrosolis right click cooldown

    ## Guide [ function weapons:type/sword/pyrosolis/rc/cd ] >>> 火之魔劍 地獄之火 右鍵 冷卻 / sword pyrosolis right click cooldown
    ## Guide [ function weapons:type/sword/pyrosolis/rc/use ] >>> 火之魔劍 地獄之火 右鍵 觸發 / sword pyrosolis right click activate

    ## 執行者 : 玩家
    ## 
    ## 判斷的是「放技能當下」的狀態 : 在【激活】型態又還有【末日】可以燒就折半成 5 秒
    ## 之後層數用完也不會把這一輪的 CD 拉回 10 秒

# ===================================================

execute \
    if score @s weapon.pyrosolis.state matches 1 \
    if score @s weapon.pyrosolis.apocalypse matches 1.. run \
    return run \
function weapons:rc/cd {id:"weapon.pyrosolis.cd", cd:100}

function weapons:rc/cd {id:"weapon.pyrosolis.cd", cd:200}
