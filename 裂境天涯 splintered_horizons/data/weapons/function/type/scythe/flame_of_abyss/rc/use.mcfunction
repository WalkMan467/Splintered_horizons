# ===================================================
# 鐮 深淵雙重火 右鍵 觸發 / scythe flame of abyss right click activate

    ## Guide [ function weapons:type/scythe/flame_of_abyss/rc/use ] >>> 鐮 深淵雙重火 右鍵 觸發 / scythe flame of abyss right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed

# ===================================================

# 連點保護 / Click interval

execute \
    if score @s player.click.interval matches 1.. run \
    return run \
return 0

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use

execute \
    unless score @s weapon.flame_of_abyss.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.flame_of_abyss.cd", cd:10}

# CD 還沒到 / Still on cooldown

execute \
    unless score #gametime global.main >= @s weapon.flame_of_abyss.cd run \
    return run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"


scoreboard players set @s player.click.interval 20
function weapons:rc/cd {id:"weapon.flame_of_abyss.cd", cd:10}