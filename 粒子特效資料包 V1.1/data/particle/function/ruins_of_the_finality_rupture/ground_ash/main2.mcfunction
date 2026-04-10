# timer
scoreboard players add @s particle.ruins_of_the_finality_rupture 1

# speed

execute \
    if score @s particle.ruins_of_the_finality_rupture matches ..12 run \
tp @s ^ ^ ^-0.8

# reset

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 42.. run \
kill @s