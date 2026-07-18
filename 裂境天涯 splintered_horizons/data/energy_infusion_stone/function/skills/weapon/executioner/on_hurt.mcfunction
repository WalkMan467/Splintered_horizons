execute \
    unless score @s energy_infusion_stone.executioner.target.id matches -214748364..214748364 \
    store result score @s energy_infusion_stone.executioner.target.id run \
random value -214748364..214748364

tag @s add energy_infusion_stone.executioner.temp

execute \
    on attacker \
    if score @s energy_infusion_stone.executioner.user.id matches -214748364..214748364 run \
function energy_infusion_stone:skills/weapon/executioner/comparison/main

execute \
    on attacker at @s \
    unless score @s energy_infusion_stone.executioner.user.id matches -214748364..214748364 run \
function energy_infusion_stone:skills/weapon/executioner/setup

tag @s remove energy_infusion_stone.executioner.temp