# ===================================================
# 劍 夜幕 右鍵 觸發 / sword nightfall right click activate

    ## Guide [ function weapons:type/sword/nightfall/rc/use ] >>> 劍 夜幕 右鍵 觸發 / sword nightfall right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/sword/nightfall/rc/state/1 ] >>> 劍 夜幕 右鍵 狀態 階段 1 / sword nightfall right click state step 1
    ## Guide [ function weapons:type/sword/nightfall/rc/state/0 ] >>> 劍 夜幕 右鍵 狀態 階段 0 / sword nightfall right click state step 0

# ===================================================

scoreboard players add @s weapon.nightfall.state 0

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s weapon.nightfall.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.nightfall.cd", cd:100}

execute \
    unless score #gametime global.main >= @s weapon.nightfall.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

# 重置 CD / Reset CD

function weapons:rc/cd {id:"weapon.nightfall.cd", cd:100}

scoreboard players set @s player.click.interval 20

scoreboard players set @s weapon.effect.shadow 100

# 緋紅之爪彈射傷害 / Crimson Claw Dmg

execute \
    if score @s weapon.effect.crimson_claw matches 1.. run \
function weapons:type/sword/nightfall/rc/switch_dmg/use

# 型態切換 / State Switch

execute \
    if score @s weapon.nightfall.state matches 0 run \
    return run \
function weapons:type/sword/nightfall/rc/state/1

execute \
    if score @s weapon.nightfall.state matches 1 run \
    return run \
function weapons:type/sword/nightfall/rc/state/0