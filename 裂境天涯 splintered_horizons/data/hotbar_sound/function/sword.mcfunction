# ===================================================
# Function

    ## Guide [ function hotbar_sound:sword ] >>> Is Sword?
    ## Guide [ function hotbar_sound:detect ] >>> Detect
    ## Guide [ function hotbar_sound:guide ] >>> Guide
    ## Guide [ function hotbar_sound:item ] >>> Is Item?
    ## Guide [ function hotbar_sound:tool ] >>> Is Tool?
    ## Guide [ function hotbar_sound:reset ] >>> Reset
    ## Guide [ function hotbar_sound:main ] >>> Main

# ===================================================

playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.25 1

function #players:detect/hotbar_switch

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:item
advancement revoke @s only hotbar_sound:tool