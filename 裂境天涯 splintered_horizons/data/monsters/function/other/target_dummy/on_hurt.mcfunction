advancement revoke @s only monsters:other/target_dummy/on_hurt

execute \
    if items entity @s weapon.mainhand #swords run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand #hoes run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand #pickaxes run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand #axes run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand #shovels run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand mace run \
function monsters:other/target_dummy/reset_damage
execute \
    if items entity @s weapon.mainhand trident run \
function monsters:other/target_dummy/reset_damage

execute \
    if items entity @s weapon.mainhand #spears run \
function monsters:other/target_dummy/reset_damage