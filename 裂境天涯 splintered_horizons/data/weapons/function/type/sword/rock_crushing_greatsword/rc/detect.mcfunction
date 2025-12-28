
execute \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
return 0


execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] \
    if predicate weapons:type/sword/rock_crushing_greatsword/animation/none
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/true