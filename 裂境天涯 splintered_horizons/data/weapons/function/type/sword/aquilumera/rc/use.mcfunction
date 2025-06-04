scoreboard players add @s weapon.aquilumera.cd 0
execute unless score @s weapon.aquilumera.cd matches ..0 run function weapons:skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"
execute unless score @s weapon.aquilumera.cd matches ..0 run return 0

scoreboard players set @s player.click.interval 20

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{wl_light:1b}] run scoreboard players set @s weapon.aquilumera.state 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{wl_water:1b}] run scoreboard players set @s weapon.aquilumera.state 2

execute if score @s weapon.aquilumera.state matches 1 run function weapons:type/sword/aquilumera/switch_water
execute if score @s weapon.aquilumera.state matches 1 run item modify entity @s weapon.mainhand weapons:type/sword/aquilumera/water

execute if score @s weapon.aquilumera.state matches 2 run function weapons:type/sword/aquilumera/switch_light
execute if score @s weapon.aquilumera.state matches 2 run item modify entity @s weapon.mainhand weapons:type/sword/aquilumera/light