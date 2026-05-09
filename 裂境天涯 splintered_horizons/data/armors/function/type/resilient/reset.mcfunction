# ===================================================
# Resilient Main Function

    ## Guide [ function armors:type/resilient/reset ] >>> Reset
    ## Guide [ function armors:type/resilient/use ] >>> Function triggered by being hit
    ## Guide [ function armors:type/resilient/main ] >>> Resilient Loop
    ## Guide [ function armors:type/resilient/add ] >>> Adds score and resets Timer with each hit
    ## Guide [ function armors:type/resilient/broken ] >>> Broken
# ===================================================
# This Function: reset

scoreboard players reset @s armor.resilient.hit
scoreboard players reset @s armor.resilient.cd
scoreboard players reset @s armor.resilient.effect.timer

playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75

attribute @s armor modifier remove armor.resilient