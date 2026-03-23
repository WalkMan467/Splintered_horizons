# ===================================================
# Resilient Main Function

    ## Guide [ function armors:type/resilient/use ] >>> Function triggered by being hit
    ## Guide [ function armors:type/resilient/main ] >>> Resilient Loop
    ## Guide [ function armors:type/resilient/reset ] >>> Reset
    ## Guide [ function armors:type/resilient/add ] >>> Adds score and resets Timer with each hit
    ## Guide [ function armors:type/resilient/broken ] >>> Broken
# ===================================================
# This Function: use

execute \
    if score @s armor.resilient.cd matches 1.. run \
return 0

scoreboard players add @s armor.resilient.hit 0

    # If armor.resilient.hit > 5;
    execute \
        if score @s armor.resilient.hit matches ..5 run \
    function armors:type/resilient/add

    # Else;
    execute \
        if score @s armor.resilient.hit matches 6.. run \
    function armors:type/resilient/broken
#\
}