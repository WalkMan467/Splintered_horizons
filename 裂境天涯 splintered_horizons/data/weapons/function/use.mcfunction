advancement revoke @s only weapons:use

scoreboard players add @s player.click.interval 0
execute if score @s player.click.interval matches 1.. run return 0

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:1b} | minecraft:custom_data~{rc:1}] if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"sickle"} | minecraft:custom_data~{type:"sword"} |  minecraft:custom_data~{type:"scythe"} |  minecraft:custom_data~{type:"drop"} |  minecraft:custom_data~{type:"arrow"}] run function weapons:rc with entity @s SelectedItem.components."minecraft:custom_data"