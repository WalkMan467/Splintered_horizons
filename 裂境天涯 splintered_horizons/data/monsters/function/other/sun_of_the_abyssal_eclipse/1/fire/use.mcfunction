
execute \
    if entity @s[gamemode=!survival,gamemode=!adventure] run \
return 0

function players:effect/ignite/use {duration:3}