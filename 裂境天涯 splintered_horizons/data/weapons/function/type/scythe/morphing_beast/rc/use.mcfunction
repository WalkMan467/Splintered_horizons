# ===================================================
# 鐮 變形異獸 右鍵 觸發 / scythe morphing beast right click activate

    ## Guide [ function weapons:type/scythe/morphing_beast/rc/use ] >>> 鐮 變形異獸 右鍵 觸發 / scythe morphing beast right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/0 ] >>> 鐮 變形異獸 右鍵 狀態 階段 0 / scythe morphing beast right click state step 0
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/1 ] >>> 鐮 變形異獸 右鍵 狀態 階段 1 / scythe morphing beast right click state step 1
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/2 ] >>> 鐮 變形異獸 右鍵 狀態 階段 2 / scythe morphing beast right click state step 2

# ===================================================

scoreboard players add @s weapon.morphing_beast.state 0

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s weapon.morphing_beast.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.morphing_beast.cd", cd:100}

execute \
    unless score #gametime global.main >= @s weapon.morphing_beast.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"


scoreboard players set @s player.click.interval 20

scoreboard players set @s weapon.effect.crimson_claw 100

playsound minecraft:entity.warden.dig voice @s ~ ~1 ~ 1 2
playsound minecraft:block.respawn_anchor.set_spawn voice @s ~ ~1 ~ 1 1


execute \
    if score @s weapon.morphing_beast.state matches 0 \
    if score #gametime global.main >= @s weapon.morphing_beast.cd run \
function weapons:type/scythe/morphing_beast/rc/state/0

execute \
    if score @s weapon.morphing_beast.state matches 1 \
    if score #gametime global.main >= @s weapon.morphing_beast.cd run \
function weapons:type/scythe/morphing_beast/rc/state/1

execute \
    if score @s weapon.morphing_beast.state matches 2 \
    if score #gametime global.main >= @s weapon.morphing_beast.cd run \
function weapons:type/scythe/morphing_beast/rc/state/2

# 重置 CD / Reset CD

function weapons:rc/cd {id:"weapon.morphing_beast.cd", cd:100}
