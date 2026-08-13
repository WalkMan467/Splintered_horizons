# ===================================================

# Rollback Position guide


    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================

# Using player data is expensive,
# so a marker with a unique UUID is used to track the player's position instead

execute \
    unless predicate {type:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} run \
return 0

# 0360377c-2395-4b58-b2fa-7c227e25b516
summon marker ~ ~ ~ {UUID:[I;56637308,596986712,-1292207070,2116400406]}

execute \
    store result score @s player.void_protection.x run \
data get entity 0360377c-2395-4b58-b2fa-7c227e25b516 Pos[0] 100

execute \
    store result score @s player.void_protection.y run \
data get entity 0360377c-2395-4b58-b2fa-7c227e25b516 Pos[1] 100

execute \
    store result score @s player.void_protection.z run \
data get entity 0360377c-2395-4b58-b2fa-7c227e25b516 Pos[2] 100

kill 0360377c-2395-4b58-b2fa-7c227e25b516