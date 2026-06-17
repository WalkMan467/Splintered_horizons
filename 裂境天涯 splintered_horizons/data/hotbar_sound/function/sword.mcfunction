# ===================================================
# sword

    ## Guide [ function hotbar_sound:sword ] >>> sword
    ## Guide [ function hotbar_sound:detect ] >>> hotbar sound:detect
    ## Guide [ function hotbar_sound:guide ] >>> hotbar sound:guide

# ===================================================

playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.25 1

function #players:detect/hotbar_switch

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:item
advancement revoke @s only hotbar_sound:tool