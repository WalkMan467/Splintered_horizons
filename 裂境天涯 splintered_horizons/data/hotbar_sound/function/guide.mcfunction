# ===================================================
# Function

    ## Guide [ function hotbar_sound:guide ] >>> Guide
    ## Guide [ function hotbar_sound:detect ] >>> Detect
    ## Guide [ function hotbar_sound:item ] >>> Is Item?
    ## Guide [ function hotbar_sound:sword ] >>> Is Sword?
    ## Guide [ function hotbar_sound:tool ] >>> Is Tool?
    ## Guide [ function hotbar_sound:reset ] >>> Reset
    ## Guide [ function hotbar_sound:main ] >>> Main

# ===================================================


execute \
    as @a at @s run \
function hotbar_sound:main

schedule function hotbar_sound:guide 2t