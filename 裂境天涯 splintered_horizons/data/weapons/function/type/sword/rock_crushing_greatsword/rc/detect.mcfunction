# ===================================================
# 碎岩大劍 右鍵 偵測 / sword rock crushing greatsword right click detect

    ## Guide [ function weapons:type/sword/rock_crushing_greatsword/rc/detect ] >>> 碎岩大劍 右鍵 偵測 / sword rock crushing greatsword right click detect

# ===================================================


execute \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
return 0


execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] \
    if predicate weapons:type/sword/rock_crushing_greatsword/animation/none
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/true