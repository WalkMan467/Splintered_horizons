# ===================================================
# Radiant Guardians Helmet Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/effect/add_torch ] >>> Passive Auto Place Torch
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Take Off
    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> Function Guide
    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/add_torch ] >>> Add Torch

# ===================================================
# Passive Auto Place Torch

scoreboard players set @s armor.radiant_guardians_helmet.effect.cd 100

execute \
    unless predicate armors:type/radiant_guardians_helmet/effect/light_detect run \
return 0


execute \
    store result score #have.torch? global.main run \
clear @s #torchs 0

execute \
    unless score #have.torch? global.main matches 1.. run \
return 0

execute \
    unless block ~ ~ ~ #air run \
return 0

execute \
    if block ~ ~-1 ~ #air run \
return 0 

execute \
    if entity @s[gamemode=!adventure,gamemode=!survival] run \
return 0 

setblock ~ ~ ~ torch
clear @s #torchs 1

execute align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal @a

scoreboard players set @s armor.helmet.effect.actived 2