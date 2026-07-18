advancement revoke @s only players:replace/torch

execute \
    unless score @s player.setting.auto_refill_items matches 1.. run \
return 0

execute \
    unless items entity @s weapon.mainhand * run \
return 1

tag @s add player.replace.torch