# ===================================================
# 劍 回音律動 右鍵 觸發 / sword echo rhythm right click activate

    ## Guide [ function weapons:type/sword/echo_rhythm/rc/use ] >>> 劍 回音律動 右鍵 觸發 / sword echo rhythm right click activate
    ## Guide [ function weapons:rc/failure/ultimate_use_failed ] >>> 右鍵 失敗 ultimate use failed / right click failure ultimate use failed
    ## Guide [ function weapons:type/sword/echo_rhythm/damage/ultimate ] >>> 劍 回音律動 傷害 ultimate / sword echo rhythm damage ultimate

# ===================================================

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s player.ultimate matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"player.ultimate", cd:400}

execute \
    unless score #gametime global.main >= @s player.ultimate run \
    return run \
function weapons:rc/failure/ultimate_use_failed

# 重置 CD / Reset CD

function weapons:rc/cd {id:"player.ultimate", cd:400}

scoreboard players set @s player.click.interval 20

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 10 10 20

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1


function weapons:type/sword/echo_rhythm/damage/ultimate