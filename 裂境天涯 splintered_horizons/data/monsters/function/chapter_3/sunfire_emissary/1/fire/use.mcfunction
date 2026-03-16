
execute \
    if score @s sys.dummy_mob matches 1.. run \
return 0

execute \
    if entity @s[gamemode=!survival,gamemode=!adventure] run \
return 0

function players:effect/ignite/use {duration:3}