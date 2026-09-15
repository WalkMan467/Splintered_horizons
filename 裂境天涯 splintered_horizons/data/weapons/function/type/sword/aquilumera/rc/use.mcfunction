# ===================================================
# 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate

    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/sword/aquilumera/rc/cd ] >>> 水之魔劍 水鏡之光 右鍵 冷卻 / sword aquilumera right click cooldown
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/use ] >>> 水之魔劍 水鏡之光 切換 water 觸發 / sword aquilumera switch water activate
    ## Guide [ function weapons:type/sword/aquilumera/switch/light/use ] >>> 水之魔劍 水鏡之光 切換 light 觸發 / sword aquilumera switch light activate

# ===================================================

# 晨光輝陣

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

execute \
    unless score @s weapon.aquilumera.cd matches -2147483648..2147483647 run \
    return run \
function weapons:type/sword/aquilumera/rc/cd

execute \
    unless score #gametime global.main >= @s weapon.aquilumera.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

# 重置 CD / Reset CD

function weapons:type/sword/aquilumera/rc/cd

scoreboard players set @s player.click.interval 20

# 記憶之冰 (00:05)

scoreboard players set @s weapon.effect.starry_sky_frost 100

# 10 段打擊 : 由 weapons:type/core/player 每 tick 打一下，打到 0 自動停

scoreboard players set @s weapon.aquilumera_passive 10

# 型態切換 水 ⇄ 光

execute \
    if items entity @s weapon.mainhand *[custom_data~{wl_light:1b}] run \
scoreboard players set @s weapon.aquilumera.state 1

execute \
    if items entity @s weapon.mainhand *[custom_data~{wl_water:1b}] run \
scoreboard players set @s weapon.aquilumera.state 2

execute \
    if score @s weapon.aquilumera.state matches 1 run \
function weapons:type/sword/aquilumera/switch/water/use

execute \
    if score @s weapon.aquilumera.state matches 2 run \
function weapons:type/sword/aquilumera/switch/light/use
