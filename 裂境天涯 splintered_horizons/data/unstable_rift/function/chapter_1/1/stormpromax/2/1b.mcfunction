
# move
execute store result entity @s Motion[0] double 0.001 run random value -500..500
data modify entity @s Motion[1] set value 0.5
execute store result entity @s Motion[2] double 0.001 run random value -500..500

# particle
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0