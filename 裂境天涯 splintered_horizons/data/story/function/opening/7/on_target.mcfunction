execute \
    if entity @s[gamemode=creative] run \
return 0

execute \
    if entity @s[tag=animation] run \
return 0

execute \
    if entity @s[gamemode=!spectator] run \
return 0

title @a title ""

title @a subtitle ""

title @a times 20 20 20

function cutscene:opening/0/title/use