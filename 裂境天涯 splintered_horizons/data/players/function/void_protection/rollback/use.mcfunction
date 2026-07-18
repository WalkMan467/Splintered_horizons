# ===================================================

# Rollback


    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================


execute \
    if entity @s[gamemode=creative] run \
return 0

execute \
    if entity @s[gamemode=spectator] run \
return 0

title @s times 0 20 20
title @s title {text:"\uE000","font":"minecraft:screen","color":"white",shadow_color:0}
title @s subtitle ""

# Retrieved Player Rollback Position
function players:void_protection/rollback/retrieve_data

# Using a macro to execute a rollback
function players:void_protection/rollback/use.guide