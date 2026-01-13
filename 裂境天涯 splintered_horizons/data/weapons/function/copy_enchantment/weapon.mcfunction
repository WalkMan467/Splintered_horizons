
execute \
    unless items entity @s weapon.offhand * run \
item replace entity @s weapon.offhand with stone_sword

item modify entity @s weapon.offhand weapons:rdm_enchantment
function weapons:copy_enchantment/use

item replace entity @s weapon.offhand with air