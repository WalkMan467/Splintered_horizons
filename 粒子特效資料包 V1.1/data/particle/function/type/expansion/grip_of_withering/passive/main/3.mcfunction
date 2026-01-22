particle flash{color:[1.000,0.835,0.000,1.00]} ~ ~-0.5 ~ 0 0 0 0 1 normal @a
particle dust_color_transition{from_color:[1.000,0.933,0.000],scale:1.5,to_color:[1.000,0.569,0.000]} ~ ~-0.5 ~ 2 1 2 1 100 force @a
particle minecraft:wax_on ~ ~-0.5 ~ 0 0 0 40 200 force @a
playsound minecraft:voice.aquilumera_light voice @a ~ ~-0.5 ~ 1 1
playsound minecraft:entity.generic.explode voice @a ~ ~-0.5 ~ 1 0.50

scoreboard players reset #particle.grip_of_withering.passive.range particle
scoreboard players reset @s particle.grip_of_withering.passive.sound

execute \
    rotated ~ 0 run \
function particle:type/expansion/grip_of_withering/passive/main/4