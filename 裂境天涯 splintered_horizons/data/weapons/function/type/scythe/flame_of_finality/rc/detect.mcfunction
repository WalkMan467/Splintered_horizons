execute \
    if score @s player.finality_tunder matches 1.. run \
return 1

execute \
    unless score @s player.finality_tunder matches 1.. \
    if score @s player.ultimate matches 1.. run \
return 0

execute \
    unless score @s player.finality_tunder matches 1.. \
    unless score @s player.ultimate matches 1.. run \
return 1