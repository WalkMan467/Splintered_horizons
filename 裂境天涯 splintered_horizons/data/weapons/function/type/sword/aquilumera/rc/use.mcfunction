# ===================================================
# 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate

    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/use ] >>> 水之魔劍 水鏡之光 切換 water 觸發 / sword aquilumera switch water activate
    ## Guide [ function weapons:type/sword/aquilumera/switch/light/use ] >>> 水之魔劍 水鏡之光 切換 light 觸發 / sword aquilumera switch light activate

# ===================================================

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s weapon.aquilumera.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.aquilumera.cd", cd:500}

execute \
    unless score #gametime global.main >= @s weapon.aquilumera.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

# Reset CD

function weapons:rc/cd {id:"weapon.aquilumera.cd", cd:500}

scoreboard players set @s player.click.interval 20
scoreboard players set @s weapon.aquilumera_passive 10

execute \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{wl_light:1b}] run \
scoreboard players set @s weapon.aquilumera.state 1

execute \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{wl_water:1b}] run \
scoreboard players set @s weapon.aquilumera.state 2


execute \
    if score @s weapon.aquilumera.state matches 1 run \
function weapons:type/sword/aquilumera/switch/water/use


execute \
    if score @s weapon.aquilumera.state matches 2 run \
function weapons:type/sword/aquilumera/switch/light/use