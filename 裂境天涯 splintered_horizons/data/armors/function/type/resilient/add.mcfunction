# ===================================================
# Resilient Main Function

    ## Guide [ function armors:type/resilient/add ] >>> Adds score and resets Timer with each hit
    ## Guide [ function armors:type/resilient/use ] >>> Function triggered by being hit
    ## Guide [ function armors:type/resilient/main ] >>> Resilient Loop
    ## Guide [ function armors:type/resilient/reset ] >>> Reset
    ## Guide [ function armors:type/resilient/broken ] >>> Broken
# ===================================================
# This Function: add

scoreboard players add @s armor.resilient.hit 1
scoreboard players set @s armor.resilient.effect.timer 100

playsound minecraft:item.shield.block voice @a ~ ~1 ~ 0.5 1