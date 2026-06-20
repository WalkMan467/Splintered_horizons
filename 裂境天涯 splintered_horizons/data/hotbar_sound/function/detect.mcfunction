# ===================================================

# detect



    ## Guide [ function hotbar_sound:detect ] >>> detect

    ## Guide [ function hotbar_sound:guide ] >>> hotbar sound:guide

    ## Guide [ function hotbar_sound:item ] >>> hotbar sound:item



# ===================================================



function #players:detect/hotbar_switch



stopsound @s voice minecraft:voice.kill_sword





execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"kill_sword"}] run \
function weapons:type/sword/kill_sword/select



execute \
    if items entity @s weapon.mainhand #weapon[!custom_data~{weapon:"kill_sword"}] run \
playsound minecraft:hotbar.switch_sword voice @a ~ ~1 ~ 0.375 1



execute \
    if items entity @s weapon.mainhand #tool run \
playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 1



execute \
    if items entity @s weapon.mainhand * \
    unless items entity @s weapon.mainhand #minecraft:tool \
    unless items entity @s weapon.mainhand #minecraft:swords run \
playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 1