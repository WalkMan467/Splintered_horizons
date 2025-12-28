# ===================================================
# Function

    ## Guide [ function hotbar_sound:main ] >>> Main
    ## Guide [ function hotbar_sound:detect ] >>> Detect
    ## Guide [ function hotbar_sound:guide ] >>> Guide
    ## Guide [ function hotbar_sound:item ] >>> Is Item?
    ## Guide [ function hotbar_sound:sword ] >>> Is Sword?
    ## Guide [ function hotbar_sound:tool ] >>> Is Tool?
    ## Guide [ function hotbar_sound:reset ] >>> Reset

# ===================================================

# Detecting column changes

execute \
    store result score @s hotbar run \
data get entity @s SelectedItemSlot

execute \
    unless score @s hotbar = @s hotbar_temp run \
function hotbar_sound:detect
scoreboard players operation @s hotbar_temp = @s hotbar