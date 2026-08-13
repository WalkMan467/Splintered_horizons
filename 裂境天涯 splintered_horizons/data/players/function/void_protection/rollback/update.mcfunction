# ===================================================

# Update Player Rollback Position


    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================

# Store the record point after rollback (dedicated to void protection)

execute \
    as @a at @s \
    if predicate {type:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} run \
function players:void_protection/rollback/update.guide

schedule function players:void_protection/rollback/update 5s