tag @s remove summon

scoreboard players set @s duration 17

scoreboard players operation @s particle.grip_of_withering.passive.id = @n[distance=0..,tag=particle.grip_of_withering.passive.user,type=!#minecraft:dummy_mob] particle.grip_of_withering.passive.id

scoreboard players display name @s particle.grip_of_withering.passive.id "Spacetime Collapse Main"
scoreboard players display name @s particle.grip_of_withering.passive.timer "Spacetime Collapse Main Timer"