# ===================================================

# Void Protection Detect Function


    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================

# Void Protection Detect Function

# Enter the Void
execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:-127}}}}} run \
    return run \
advancement grant @s only players:void_protection/in_void

# Leave the Void
advancement grant @s only players:void_protection/out_void