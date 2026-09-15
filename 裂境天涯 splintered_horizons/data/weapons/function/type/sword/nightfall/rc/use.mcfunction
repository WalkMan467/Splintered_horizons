# ===================================================
# 劍 夜幕 右鍵 觸發 / sword nightfall right click activate

    ## Guide [ function weapons:type/sword/nightfall/rc/use ] >>> 劍 夜幕 右鍵 觸發 / sword nightfall right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/sword/nightfall/rc/state/1 ] >>> 劍 夜幕 右鍵 狀態 階段 1 / sword nightfall right click state step 1
    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/bleeding ] >>> 劍 夜幕 右鍵 流血 / sword nightfall right click bleeding
    ## Guide [ function weapons:type/sword/nightfall/rc/lunar_eclipse/detonate ] >>> 劍 夜幕 右鍵 引爆月蝕 / sword nightfall right click detonate lunar eclipse
    ## Guide [ function weapons:type/sword/nightfall/rc/switch_dmg/use ] >>> 劍 夜幕 右鍵 switch dmg 觸發 / sword nightfall right click switch dmg activate

# ===================================================

# 月相輪轉

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

# 至深之暗 (00:05)

scoreboard players set @s weapon.effect.shadow 100

# 血月型態 (00:05)，時間到由 rc/blood_moon/timer 換回半月

scoreboard players set @s weapon.nightfall.blood_moon 100

execute \
    if score @s weapon.nightfall.state matches 0 run \
function weapons:type/sword/nightfall/rc/state/1

# 4 格內 : 流血 (00:05) + 引爆所有月蝕

execute at @s run \
function weapons:type/sword/nightfall/rc/lunar_eclipse/bleeding

execute at @s run \
function weapons:type/sword/nightfall/rc/lunar_eclipse/detonate

# 緋紅之爪 : 5 次 150% 真實傷害 + 恢復血量

execute \
    if score @s weapon.effect.crimson_claw matches 1.. run \
function weapons:type/sword/nightfall/rc/switch_dmg/use
