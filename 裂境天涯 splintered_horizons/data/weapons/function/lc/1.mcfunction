scoreboard players add @s player.click.interval 0

execute \
    if score @s player.click.interval matches 1.. run \
return 0


execute \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{lc:1b} | minecraft:custom_data~{lc:1}] \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"bow"} | minecraft:custom_data~{type:"sickle"} | minecraft:custom_data~{type:"sword"} |  minecraft:custom_data~{type:"scythe"} |  minecraft:custom_data~{type:"drop"} |  minecraft:custom_data~{type:"arrow"}|  minecraft:custom_data~{type:"axe"}] run \
function weapons:lc/2 with entity @s SelectedItem.components."minecraft:custom_data"