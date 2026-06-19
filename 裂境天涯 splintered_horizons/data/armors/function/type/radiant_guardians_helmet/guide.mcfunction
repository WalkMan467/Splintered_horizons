# ===================================================

# guide



    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> guide

    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> use

    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> eqipment



# ===================================================



# Function Guide





execute \
    if block ~ ~ ~ #air align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal @a



execute \
    if block ~ ~ ~ #air run \
setblock ~ ~ ~ torch

kill @s