# ===================================================
# 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate

    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/use ] >>> 水之魔劍 水鏡之光 切換 water 觸發 / sword aquilumera switch water activate
    ## Guide [ function weapons:type/sword/aquilumera/switch/light/use ] >>> 水之魔劍 水鏡之光 切換 light 觸發 / sword aquilumera switch light activate

# ===================================================

scoreboard players add @s weapon.aquilumera.cd 0

execute \
    unless score @s weapon.aquilumera.cd matches ..0 run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.aquilumera.cd matches ..0 run \
return 0

scoreboard players set @s player.click.interval 20
scoreboard players set @s weapon.aquilumera_passive 10
scoreboard players set @s weapon.aquilumera.cd 500

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