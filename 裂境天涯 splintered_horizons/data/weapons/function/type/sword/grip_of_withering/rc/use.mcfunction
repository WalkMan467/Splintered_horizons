# ===================================================
# 劍 凋零之握 右鍵 觸發 / sword grip of withering right click activate

    ## Guide [ function weapons:type/sword/grip_of_withering/rc/use ] >>> 劍 凋零之握 右鍵 觸發 / sword grip of withering right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function dmg_formula:weapons/type/sword/grip_of_withering/calculate ] >>> weapons 劍 凋零之握 計算 / weapons sword grip of withering calculate
    ## Guide [ function weapons:type/sword/grip_of_withering/rc/fx ] >>> 劍 凋零之握 右鍵 特效 / sword grip of withering right click visuals

# ===================================================

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s weapon.grip_of_withering.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.grip_of_withering.cd", cd:240}

execute \
    unless score #gametime global.main >= @s weapon.grip_of_withering.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

# 重置 CD / Reset CD

function weapons:rc/cd {id:"weapon.grip_of_withering.cd", cd:240}

scoreboard players set @s player.click.interval 20
scoreboard players set @s weapon.effect.crimson_claw 160

# 掛凋零 / Attach Wither
tag @e[distance=..6,type=!#minecraft:dummy_mob,type=!player] add dmger
effect give @e[distance=..6,tag=dmger,type=!#minecraft:dummy_mob,type=!player] wither 8 1 false

# 傷害計算公式 / Atk Dmg Calculate
tag @s[tag=!atker] add atker
scoreboard players set @s[tag=atker] dmg_formula.atk_percentage 150
function dmg_formula:weapons/type/sword/grip_of_withering/calculate


# SFX
playsound minecraft:entity.wither.shoot voice @a ~ ~1 ~ 1 0.75
particle minecraft:trial_omen ~ ~1 ~ 0 0 0 1 20 force @a

function weapons:type/sword/grip_of_withering/rc/fx