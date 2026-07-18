# @s = Player

execute \
    if score @s energy_infusion_stone.executioner.user.id = @n[sort=arbitrary,distance=..60,tag=energy_infusion_stone.executioner.temp,type=!#minecraft:dummy_mob] energy_infusion_stone.executioner.target.id run \
    return run \
function energy_infusion_stone:skills/weapon/executioner/comparison/true

function energy_infusion_stone:skills/weapon/executioner/comparison/false