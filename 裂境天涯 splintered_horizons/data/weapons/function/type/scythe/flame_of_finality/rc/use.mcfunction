# ===================================================
# 鐮 終焉雙重火 右鍵 觸發 / scythe flame of finality right click activate

    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/use ] >>> 鐮 終焉雙重火 右鍵 觸發 / scythe flame of finality right click activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/detect ] >>> 鐮 終焉雙重火 右鍵 偵測 / scythe flame of finality right click detect
    ## Guide [ function weapons:rc/failure/ultimate_use_failed ] >>> 右鍵 失敗 ultimate use failed / right click failure ultimate use failed
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/attack/1/use ] >>> 鐮 終焉雙重火 右鍵 攻擊 階段 1 觸發 / scythe flame of finality right click attack step 1 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/attack/2 ] >>> 鐮 終焉雙重火 右鍵 攻擊 階段 2 / scythe flame of finality right click attack step 2
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/attack/3 ] >>> 鐮 終焉雙重火 右鍵 攻擊 階段 3 / scythe flame of finality right click attack step 3

# ===================================================

scoreboard players add @s player.ultimate 0

execute \
    unless function weapons:type/scythe/flame_of_finality/rc/detect run \
return run \
function weapons:rc/failure/ultimate_use_failed

execute \
    unless score @s player.finality_tunder matches 1.. \
    unless score @s player.ultimate matches 1.. run \
scoreboard players set @s player.ultimate 500

execute \
    if score @s player.finality_tunder matches 1.. run \
scoreboard players remove @s player.finality_tunder 1

attribute @s attack_damage modifier remove weapon.flame_of_finality
tag @s add weapon.flame_of_finality.user

execute \
    unless score @s weapon.flame_of_finality.attack matches 2.. run \
function weapons:type/scythe/flame_of_finality/rc/attack/1/use

execute \
    if score @s weapon.flame_of_finality.attack matches 2 run \
function weapons:type/scythe/flame_of_finality/rc/attack/2

execute \
    if score @s weapon.flame_of_finality.attack matches 3 run \
function weapons:type/scythe/flame_of_finality/rc/attack/3

attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base
tag @s remove weapon.flame_of_finality.user