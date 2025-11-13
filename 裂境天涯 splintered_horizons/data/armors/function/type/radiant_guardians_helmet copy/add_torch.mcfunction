# ===================================================
# Radiant Guardians Helmet Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/add_torch ] >>> Add Torch
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Take Off
    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> Function Guide
    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/effect/add_torch ] >>> Passive Auto Place Torch

# ===================================================
# Add Torch

summon item ~ ~1 ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Tags:["armors.radiant_guardians_helmet.torch"],Motion:[0.25d,0.5d,0.25d],Age:5900}
summon item ~ ~1 ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Tags:["armors.radiant_guardians_helmet.torch"],Motion:[-0.25d,0.5d,0.25d],Age:5900}
summon item ~ ~1 ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Tags:["armors.radiant_guardians_helmet.torch"],Motion:[0.25d,0.5d,-0.25d],Age:5900}
summon item ~ ~1 ~ {Item:{id:"minecraft:torch",count:1},PickupDelay:32767,Tags:["armors.radiant_guardians_helmet.torch"],Motion:[-0.25d,0.5d,-0.25d],Age:5900}