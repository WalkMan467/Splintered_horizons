# ===================================================
# 劍 異界晨星 觸發 / sword otherworld star activate

    ## Guide [ function weapons:type/sword/otherworld_star/use ] >>> 劍 異界晨星 觸發 / sword otherworld star activate

# ===================================================


execute \
    if score @s weapon.otherworld_star.timer matches 1.. run \
scoreboard players add @s weapon.otherworld_star.effect 1

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s weapon.otherworld_star.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.otherworld_star.cd", cd:61}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s weapon.otherworld_star.cd run \
return 0

function weapons:rc/cd {id:"weapon.otherworld_star.cd", cd:61}
scoreboard players set @s weapon.otherworld_star.timer 60