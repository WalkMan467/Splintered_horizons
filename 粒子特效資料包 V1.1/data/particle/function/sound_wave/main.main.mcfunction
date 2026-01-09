scoreboard players add @s particle.sound_wave 1

# rotated
tp @s ~ ~ ~ ~6 0

# particle

execute \
    if score @s particle.sound_wave matches 10.. run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:4,to_color:[1.000,0.000,0.831]} ^ ^0.3 ^7.5 0.3 0 0.3 0 1 normal

execute \
    if score @s particle.sound_wave matches 10.. run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:4,to_color:[1.000,0.000,0.831]} ^ ^0.3 ^-7.5 0.3 0 0.3 0 1 normal

playsound minecraft:block.furnace.fire_crackle master @a

# reset 

execute \
    if score @s particle.sound_wave matches 15.. run \
kill @s