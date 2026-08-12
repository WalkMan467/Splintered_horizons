# ===================================================

# Rollback Position guide


    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

# ===================================================

# Position = @s Rollback Point

execute \
    store result storage player.data void_protection.rollback.x float 0.01 run \
scoreboard players get @s player.void_protection.x

execute \
    store result storage player.data void_protection.rollback.y float 0.01 run \
scoreboard players get @s player.void_protection.y

execute \
    store result storage player.data void_protection.rollback.z float 0.01 run \
scoreboard players get @s player.void_protection.z