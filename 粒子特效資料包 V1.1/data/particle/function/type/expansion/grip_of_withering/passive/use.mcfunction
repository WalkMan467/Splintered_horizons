scoreboard players add #index particle.grip_of_withering.passive.id 1

scoreboard players operation @s particle.grip_of_withering.passive.id = #index particle.grip_of_withering.passive.id

function particle:type/expansion/grip_of_withering/passive/main/use

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a