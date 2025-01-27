execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ultimate:1b}] if score #global player.ultimate matches 0 run function weapons:ultimate with entity @s SelectedItem.components."minecraft:custom_data"

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:1b}] run function weapons:rc with entity @s SelectedItem.components."minecraft:custom_data"

advancement revoke @s only weapons:use