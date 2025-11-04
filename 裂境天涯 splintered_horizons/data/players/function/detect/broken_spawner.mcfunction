scoreboard players reset @s player.detect.broken_spawner

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"pickaxe"}] run function weapons:type/pickaxe/use with entity @s SelectedItem.components."minecraft:custom_data"