# ===================================================

# use



    ## Guide [ function armors:type/paladins_helmet/use ] >>> use



# ===================================================



# This Function: use

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.paladins_helmet.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.paladins_helmet.cd", cd:3}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.paladins_helmet.cd run \
return 0

execute \
    unless items entity @s armor.head *[minecraft:custom_data~{id:"paladins_helmet"}] run \
return 0

tag @s add armor.paladins_helmet.use

function armors:cd {id:"armor.paladins_helmet.cd", cd:3}