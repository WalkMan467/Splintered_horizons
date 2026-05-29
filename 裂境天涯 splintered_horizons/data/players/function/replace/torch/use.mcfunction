advancement revoke @s only players:replace/torch

execute \
    unless items entity @s weapon.mainhand * run \
return 1

tag @s add player.replace.torch