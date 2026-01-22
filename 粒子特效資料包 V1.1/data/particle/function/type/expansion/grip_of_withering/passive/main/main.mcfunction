scoreboard players add @s particle.grip_of_withering.passive.timer 1

tag @s add particle.grip_of_withering.passive.temp

execute \
    as @e[distance=0..,sort=arbitrary,tag=!particle.grip_of_withering.passive.temp,type=!#minecraft:dummy_mob] at @s \
    if score @s particle.grip_of_withering.passive.id = @n[tag=particle.grip_of_withering.passive.temp,distance=0..,type=block_display] particle.grip_of_withering.passive.id run \
tag @s add particle.grip_of_withering.passive.temp

execute \
    at @n[distance=0..,tag=particle.grip_of_withering.passive.temp,type=!#minecraft:dummy_mob] run \
tp @s ~ ~1 ~

execute \
    if score @s particle.grip_of_withering.passive.timer matches 1 run \
function particle:type/expansion/grip_of_withering/passive/sword/use


tag @s remove particle.grip_of_withering.passive.temp
tag @e[distance=0..,sort=arbitrary,tag=particle.grip_of_withering.passive.temp,type=!#minecraft:dummy_mob] remove particle.grip_of_withering.passive.temp