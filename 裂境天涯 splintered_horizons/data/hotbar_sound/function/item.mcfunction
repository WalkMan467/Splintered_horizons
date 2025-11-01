# ===================================================
# Function

    ## Guide [ function hotbar_sound:item ] >>> Is Item?
    ## Guide [ function hotbar_sound:detect ] >>> Detect
    ## Guide [ function hotbar_sound:guide ] >>> Guide
    ## Guide [ function hotbar_sound:sword ] >>> Is Sword?
    ## Guide [ function hotbar_sound:tool ] >>> Is Tool?
    ## Guide [ function hotbar_sound:reset ] >>> Reset
    ## Guide [ function hotbar_sound:main ] >>> Main

# ===================================================

playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 1

function #players:detect/hotbar_switch

advancement revoke @s only hotbar_sound:reset
advancement revoke @s only hotbar_sound:sword
advancement revoke @s only hotbar_sound:tool