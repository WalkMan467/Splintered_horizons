advancement revoke @s only item:use

scoreboard players add @s player.click.interval 0
execute if score @s player.click.interval matches 1.. run return 0

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:1b} | minecraft:custom_data~{rc:1}] if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"item"}] run function item:rc with entity @s SelectedItem.components."minecraft:custom_data"