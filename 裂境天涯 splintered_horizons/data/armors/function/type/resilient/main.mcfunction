# ===================================================
# Resilient Main Function

    ## Guide [ function armors:type/resilient/main ] >>> Resilient Loop
    ## Guide [ function armors:type/resilient/use ] >>> Function triggered by being hit
    ## Guide [ function armors:type/resilient/reset ] >>> Reset
    ## Guide [ function armors:type/resilient/add ] >>> Adds score and resets Timer with each hit
    ## Guide [ function armors:type/resilient/broken ] >>> Broken
# ===================================================
# This Function: main

scoreboard players remove @s[scores={armor.resilient.cd=0..}] armor.resilient.cd 1


execute \
    if score @s armor.resilient.cd matches 0 run \
function armors:type/resilient/reset