# ===================================================
# 鐮 終焉雙重火 左鍵 觸發 / scythe flame of finality left click activate

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/use ] >>> 鐮 終焉雙重火 左鍵 觸發 / scythe flame of finality left click activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/1/use ] >>> 鐮 終焉雙重火 左鍵 階段 1 觸發 / scythe flame of finality left click step 1 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/2/use ] >>> 鐮 終焉雙重火 左鍵 階段 2 觸發 / scythe flame of finality left click step 2 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/use ] >>> 鐮 終焉雙重火 左鍵 階段 3 觸發 / scythe flame of finality left click step 3 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/4/use ] >>> 鐮 終焉雙重火 左鍵 階段 4 觸發 / scythe flame of finality left click step 4 activate

# ===================================================

execute if score @s player.click.interval matches 1.. run return 0

scoreboard players add @s weapon.flame_of_finality.attack 1
scoreboard players reset #weapon.flame_of_finality.blade particle
tag @s add weapon.flame_of_finality.user
attribute @s attack_damage modifier remove weapon.flame_of_finality

function weapons:type/scythe/flame_of_finality/lc/cooldown

execute \
    if score @s weapon.flame_of_finality.attack matches 1 run \
function weapons:type/scythe/flame_of_finality/lc/1/use

execute \
    if score @s weapon.flame_of_finality.attack matches 2 run \
function weapons:type/scythe/flame_of_finality/lc/2/use

execute \
    if score @s weapon.flame_of_finality.attack matches 3 \
    positioned ~ ~1.5 ~ run \
function weapons:type/scythe/flame_of_finality/lc/3/use

execute \
    if score @s weapon.flame_of_finality.attack matches 4 run \
function weapons:type/scythe/flame_of_finality/lc/4/use

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.75

tag @s remove weapon.flame_of_finality.user
attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base

execute \
    unless score @s weapon.flame_of_finality.attack matches 4.. run \
return 0

scoreboard players reset @s weapon.flame_of_finality.attack