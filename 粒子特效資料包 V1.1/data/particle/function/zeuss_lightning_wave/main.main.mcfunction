scoreboard players add @s particle.zeuss_lightning_wave 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle

# execute \
#     if score @s particle.zeuss_lightning_wave matches 12.. run \
# particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:3.0} ^ ^0.3 ^7.5 0.3 0 0.3 0 1 normal

# execute \
#     if score @s particle.zeuss_lightning_wave matches 12.. run \
# particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:3.0} ^ ^0.3 ^-7.5 0.3 0 0.3 0 1 normal
# function particle:zeuss_lightning_wave/air_ash/summon
# playsound minecraft:block.furnace.fire_crackle master @a

# reset 

execute \
    if score @s particle.zeuss_lightning_wave matches 22.. run \
kill @s