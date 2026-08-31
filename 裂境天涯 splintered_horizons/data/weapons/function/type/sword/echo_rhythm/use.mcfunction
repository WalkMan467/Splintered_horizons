# ===================================================
# 劍 回音律動 觸發 / sword echo rhythm activate

    ## Guide [ function weapons:type/sword/echo_rhythm/use ] >>> 劍 回音律動 觸發 / sword echo rhythm activate
    ## Guide [ function weapons:type/sword/echo_rhythm/damage/normal ] >>> 劍 回音律動 傷害 normal / sword echo rhythm damage normal
    ## Guide [ function weapons:type/sword/echo_rhythm/damage/stronger ] >>> 劍 回音律動 傷害 stronger / sword echo rhythm damage stronger

# ===================================================

execute \
    unless score @s weapon.echo_rhythm.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.echo_rhythm.cd", cd:60}

execute \
    unless score #gametime global.main >= @s weapon.echo_rhythm.cd run \
    return 0

# 重置 CD / Reset CD

function weapons:rc/cd {id:"weapon.echo_rhythm.cd", cd:60}

scoreboard players set @s weapon.effect.chaotic_thunder 200

execute \
    unless score @s weapon.effect.shadow matches 1.. run \
function weapons:type/sword/echo_rhythm/damage/normal


execute \
    if score @s weapon.effect.shadow matches 1.. run \
function weapons:type/sword/echo_rhythm/damage/stronger