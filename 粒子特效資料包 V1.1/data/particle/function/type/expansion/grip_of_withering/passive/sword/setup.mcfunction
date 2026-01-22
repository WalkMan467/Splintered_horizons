tag @s remove summon

scoreboard players set @s duration 17
execute \
    on passengers run \
scoreboard players set @s duration 17


execute \
    if entity @n[tag=particle.grip_of_withering.passive.user,distance=0..,type=block_display] run \
scoreboard players operation @s particle.grip_of_withering.passive.id = @n[tag=particle.grip_of_withering.passive.user,distance=0..,type=block_display] particle.grip_of_withering.passive.id

execute \
    if entity @n[tag=particle.grip_of_withering.passive.user,distance=0..,type=player] run \
scoreboard players operation @s particle.grip_of_withering.passive.id = @n[distance=0..,tag=particle.grip_of_withering.passive.user,type=!#minecraft:dummy_mob] particle.grip_of_withering.passive.id

ride @s mount @n[tag=particle.grip_of_withering.passive.user,distance=0..,type=block_display]

scoreboard players display name @s particle.grip_of_withering.passive.id "Spacetime Collapse Sword Main"
scoreboard players display name @s particle.grip_of_withering.passive.timer "Spacetime Collapse Sword Timer"