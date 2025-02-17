execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:1b} | minecraft:custom_data~{rc:1}] if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"item"}] run function items:rc with entity @s SelectedItem.components."minecraft:custom_data"

advancement revoke @s only items:use