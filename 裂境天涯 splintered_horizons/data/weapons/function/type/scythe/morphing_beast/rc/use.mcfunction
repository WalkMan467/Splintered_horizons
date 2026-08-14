# ===================================================
# 鐮 變形異獸 右鍵 觸發 / scythe morphing beast right click activate

    ## Guide [ function weapons:type/scythe/morphing_beast/rc/use ] >>> 鐮 變形異獸 右鍵 觸發 / scythe morphing beast right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/0 ] >>> 鐮 變形異獸 右鍵 狀態 階段 0 / scythe morphing beast right click state step 0
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/1 ] >>> 鐮 變形異獸 右鍵 狀態 階段 1 / scythe morphing beast right click state step 1
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/state/2 ] >>> 鐮 變形異獸 右鍵 狀態 階段 2 / scythe morphing beast right click state step 2

# ===================================================

scoreboard players add @s weapon.morphing_beast.state 0
scoreboard players add @s weapon.morphing_beast.cd 0

execute \
    unless score @s weapon.morphing_beast.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.morphing_beast.cd matches ..0 run \
return 0

tellraw @s [{"translate":"weapon.morphing_beast.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]

scoreboard players set @s player.click.interval 20

scoreboard players set @s weapon.effect.crimson_claw 100

playsound minecraft:entity.warden.dig voice @s ~ ~1 ~ 1 2
playsound minecraft:block.respawn_anchor.set_spawn voice @s ~ ~1 ~ 1 1


execute \
    if score @s weapon.morphing_beast.state matches 0 \
    if score @s weapon.morphing_beast.cd matches 0 run \
function weapons:type/scythe/morphing_beast/rc/state/0

execute \
    if score @s weapon.morphing_beast.state matches 1 \
    if score @s weapon.morphing_beast.cd matches 0 run \
function weapons:type/scythe/morphing_beast/rc/state/1

execute \
    if score @s weapon.morphing_beast.state matches 2 \
    if score @s weapon.morphing_beast.cd matches 0 run \
function weapons:type/scythe/morphing_beast/rc/state/2