scoreboard players add @s weapon.nightfall.state 0


execute \
    if items entity @s weapon.mainhand *[custom_data~{state:0b}] run \
scoreboard players set @s weapon.nightfall.state 0

execute \
    if items entity @s weapon.mainhand *[custom_data~{state:1b}] run \
scoreboard players set @s weapon.nightfall.state 1