
execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"grip_of_withering"}] \
    unless score @s weapon.grip_of_withering.effect matches 1.. run \
function weapons:type/sword/grip_of_withering/0