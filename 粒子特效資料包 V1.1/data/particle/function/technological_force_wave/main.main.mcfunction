scoreboard players add @s particle.technological_force_wave 1

# rotated
tp @s ~ ~ ~ ~6 0

# reset 

execute \
    if score @s particle.technological_force_wave matches 42.. run \
kill @s