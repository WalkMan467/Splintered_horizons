# ===================================================
# 右鍵 階段 1 / right click step 1

    ## Guide [ function weapons:rc/1 ] >>> 右鍵 階段 1 / right click step 1
    ## Guide [ function weapons:rc/failure/disabled ] >>> 右鍵 失敗 停用 / right click failure disabled
    ## Guide [ function weapons:rc/2 ] >>> 右鍵 階段 2 / right click step 2

# ===================================================

advancement revoke @s only weapons:rc

scoreboard players add @s player.click.interval 0

execute \
    if score @s player.click.interval matches 1.. run \
return 0

execute \
    if score @s player.rc.skill.disable matches 1.. run \
    return run \
function weapons:rc/failure/disabled

execute \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:1b} | minecraft:custom_data~{rc:1}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"bow"} | minecraft:custom_data~{type:"sword"} |  minecraft:custom_data~{type:"scythe"} |  minecraft:custom_data~{type:"drop"} |  minecraft:custom_data~{type:"arrow"}|  minecraft:custom_data~{type:"axe"}] run \
function weapons:rc/2 with entity @s SelectedItem.components."minecraft:custom_data"