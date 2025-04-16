scoreboard players add @s weapon.nightfall.state 0

execute if items entity @s weapon.mainhand *[custom_model_data={floats:[0]}] run scoreboard players set @s weapon.nightfall.state 0
execute if items entity @s weapon.mainhand *[custom_model_data={floats:[1]}] run scoreboard players set @s weapon.nightfall.state 1