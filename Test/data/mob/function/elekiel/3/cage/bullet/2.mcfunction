
tp @s ^ ^ ^0.4341

execute \
    as @a[distance=..5] \
    positioned ~-0.75 ~-0.75 ~-0.75 \
    if entity @s[dx=0,dy=0,dz=0] \
    positioned ~0.5 ~0.5 ~0.5 \
    if entity @s[dx=0,dy=0,dz=0] run \
tag @s add sys.victim

# fx
particle dust{color:[1.000,0.835,0.000],scale:0.75} ~ ~ ~ 0.1 0.1 0.1 0 20 force