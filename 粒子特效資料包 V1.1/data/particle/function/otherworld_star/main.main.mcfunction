scoreboard players add @s particle.otherworld_star 1

# rotated
tp @s ~ ~ ~ ~3 0

# reset 

execute \
    if score @s particle.otherworld_star matches 42.. run \
kill @s