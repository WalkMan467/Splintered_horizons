# ===================================================
# Function

    ## Guide [ function hotbar_sound:detect ] >>> Detect
    ## Guide [ function hotbar_sound:guide ] >>> Guide
    ## Guide [ function hotbar_sound:item ] >>> Is Item?
    ## Guide [ function hotbar_sound:sword ] >>> Is Sword?
    ## Guide [ function hotbar_sound:tool ] >>> Is Tool?
    ## Guide [ function hotbar_sound:reset ] >>> Reset
    ## Guide [ function hotbar_sound:main ] >>> Main

# ===================================================

function #players:detect/hotbar_switch

stopsound @s voice minecraft:voice.kill_sword

execute if items entity @s weapon.mainhand *[custom_data~{weapon:"kill_sword"}] run function weapons:type/sword/kill_sword/select
execute if items entity @s weapon.mainhand #weapon[!custom_data~{weapon:"kill_sword"}] run playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.375 1
execute if items entity @s weapon.mainhand #tool run playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 1
execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #minecraft:tool unless items entity @s weapon.mainhand #minecraft:swords run playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 1