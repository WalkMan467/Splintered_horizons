tp @s ^ ^ ^0.1

execute \
    unless score .gametime particle.global.main >= @s particle.radial_exoansion.duration run \
return 0


function particle:create/radial_exoansion/void

scoreboard players reset @s particle.radial_exoansion.duration


execute \
    unless entity @n[sort=arbitrary,distance=..1,tag=particle.radial_exoansion,type=armor_stand] run \
scoreboard players reset #particle.radial_exoansion.loop particle.global.main