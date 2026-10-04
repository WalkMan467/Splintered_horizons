# ===================================================
# 鐮 深淵雙重火 右鍵 觸發 / scythe flame of abyss right click activate

    ## Guide [ function weapons:type/scythe/flame_of_abyss/rc/use ] >>> 鐮 深淵雙重火 右鍵 觸發 / scythe flame of abyss right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed

# ===================================================

scoreboard players add @s weapon.flame_of_abyss.cd 0

execute \
    unless score @s weapon.flame_of_abyss.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.flame_of_abyss.cd matches ..0 run \
return 0


scoreboard players set @s player.click.interval 20
scoreboard players set @s weapon.flame_of_abyss.cd 10