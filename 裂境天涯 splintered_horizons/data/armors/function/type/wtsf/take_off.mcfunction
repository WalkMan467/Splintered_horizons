# ===================================================
# take_off

    ## Guide [ function armors:type/wtsf/take_off ] >>> take_off
    ## Guide [ function armors:type/wtsf/eqipment ] >>> eqipment
    ## Guide [ function armors:type/wtsf/reset ] >>> reset

# ===================================================

# Advancement Detect ;Run Function

advancement revoke @s only armors:type/wtsf/eqipment

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1

function armors:type/wtsf/reset